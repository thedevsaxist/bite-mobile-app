import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:calorie_estimator/core/error/exceptions.dart';
import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/features/auth/data/datasources/auth_api_service.dart';
import 'package:calorie_estimator/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:calorie_estimator/features/auth/data/datasources/social_sign_in_data_source.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_requests.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_response_dto.dart';
import 'package:calorie_estimator/features/auth/data/models/user_dto.dart';
import 'package:calorie_estimator/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';

class _MockApi extends Mock implements AuthApiService {}

class _MockLocal extends Mock implements AuthLocalDataSource {}

class _MockSocial extends Mock implements SocialSignInDataSource {}

const _user = UserDto(id: 'u1', email: 'ada@example.com', name: 'Ada');
const _tokens = AuthTokensDto(
  accessToken: 'access',
  refreshToken: 'refresh',
  expiresIn: 900,
);

DioException _offline() => DioException.connectionError(
  requestOptions: RequestOptions(path: '/users/me'),
  reason: 'offline',
);

DioException _status(
  int status,
  String code,
  String message, {
  bool public = false,
}) {
  final options = RequestOptions(
    path: '/test',
    extra: {if (public) AuthInterceptor.skipAuth: true},
  );
  return DioException(
    requestOptions: options,
    type: DioExceptionType.badResponse,
    response: Response(
      requestOptions: options,
      statusCode: status,
      data: {
        'success': false,
        'error': {'code': code, 'message': message},
      },
    ),
  );
}

void main() {
  late _MockApi api;
  late _MockLocal local;
  late _MockSocial social;
  late AuthRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValue(const LoginRequest(email: '', password: ''));
    registerFallbackValue(const FirebaseSignInRequest(idToken: ''));
    registerFallbackValue(const RefreshTokenRequest(refreshToken: ''));
    registerFallbackValue(_tokens);
    registerFallbackValue(_user);
  });

  setUp(() {
    api = _MockApi();
    local = _MockLocal();
    social = _MockSocial();
    repository = AuthRepositoryImpl(api, local, social);

    when(() => local.saveTokens(any())).thenAnswer((_) async {});
    when(() => local.cacheUser(any())).thenAnswer((_) async {});
    when(() => local.clear()).thenAnswer((_) async {});
  });

  group('logIn', () {
    test('stores the tokens and caches the user', () async {
      when(() => api.logIn(any())).thenAnswer(
        (_) async => const AuthResponseDto(user: _user, tokens: _tokens),
      );

      final result = await repository.logIn(
        email: ' ada@example.com ',
        password: 'secret',
      );

      expect(result.getOrElse((f) => fail('$f')).user, _user.toEntity());
      final request =
          verify(() => api.logIn(captureAny())).captured.single as LoginRequest;
      expect(request.email, 'ada@example.com');
      verify(() => local.saveTokens(_tokens)).called(1);
      verify(() => local.cacheUser(_user)).called(1);
    });

    test('returns the server message for wrong credentials', () async {
      when(() => api.logIn(any())).thenThrow(
        _status(401, 'UNAUTHORIZED', 'Invalid email or password', public: true),
      );

      final result = await repository.logIn(email: 'a@b.co', password: 'x');

      expect(
        result,
        isA<Left<Failure, Object>>().having(
          (l) => l.value.message,
          'message',
          'Invalid email or password',
        ),
      );
      verifyNever(() => local.saveTokens(any()));
    });
  });

  test('Google signs in through Firebase and sends its ID token', () async {
    when(() => social.signInWithGoogle())
        .thenAnswer((_) async => (idToken: 'firebase-token', name: null));
    when(() => api.signInWithFirebase(any())).thenAnswer(
      (_) async =>
          const AuthResponseDto(user: _user, tokens: _tokens, isNewUser: true),
    );

    final result = await repository.signInWithGoogle();

    expect(result.getOrElse((f) => fail('$f')).isNewUser, isTrue);
    final request =
        verify(() => api.signInWithFirebase(captureAny())).captured.single
            as FirebaseSignInRequest;
    expect(request.toJson(), {'idToken': 'firebase-token'});
    verify(() => local.saveTokens(_tokens)).called(1);
  });

  test('a closed Google sheet is a CancelledFailure', () async {
    when(() => social.signInWithGoogle()).thenThrow(const CancelledException());

    final result = await repository.signInWithGoogle();

    expect(
      result,
      isA<Left<Failure, Object>>().having(
        (l) => l.value,
        'failure',
        isA<CancelledFailure>(),
      ),
    );
    verifyNever(() => api.signInWithFirebase(any()));
  });

  group('restoreSession', () {
    test('is signed out without a refresh token', () async {
      when(() => local.hasSession()).thenAnswer((_) async => false);

      expect(
        await repository.restoreSession(),
        const Right<Failure, AppUser?>(null),
      );
      verifyNever(() => api.getMe());
    });

    test('starts from the cached user when offline', () async {
      when(() => local.hasSession()).thenAnswer((_) async => true);
      when(() => api.getMe()).thenThrow(_offline());
      when(() => local.getCachedUser()).thenAnswer((_) async => _user);

      expect(
        await repository.restoreSession(),
        Right<Failure, AppUser?>(_user.toEntity()),
      );
    });

    test('clears local data when the backend ended the session', () async {
      var hasSession = true;
      when(() => local.hasSession()).thenAnswer((_) async => hasSession);
      when(() => api.getMe()).thenAnswer((_) async {
        // What the interceptor does when the refresh token is rejected.
        hasSession = false;
        throw _status(401, 'TOKEN_EXPIRED', 'Access token expired');
      });

      expect(
        await repository.restoreSession(),
        const Right<Failure, AppUser?>(null),
      );
      verify(() => local.clear()).called(1);
    });
  });

  test('logOut clears the device even if the backend is unreachable', () async {
    when(() => local.readRefreshToken()).thenAnswer((_) async => 'refresh');
    when(() => api.logOut(any())).thenThrow(_offline());

    expect(await repository.logOut(), const Right<Failure, Unit>(unit));
    verify(() => local.clear()).called(1);
  });
}
