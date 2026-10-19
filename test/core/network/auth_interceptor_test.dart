import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/core/network/interceptors/envelope_interceptor.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

class _FakeStorage extends Fake implements SecureStorageService {
  _FakeStorage({this.accessToken, this.refreshToken});

  String? accessToken;
  String? refreshToken;

  @override
  Future<String?> readAccessToken() async => accessToken;

  @override
  Future<String?> readRefreshToken() async => refreshToken;

  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    this.accessToken = accessToken;
    if (refreshToken != null) this.refreshToken = refreshToken;
  }

  @override
  Future<void> clearTokens() async {
    accessToken = null;
    refreshToken = null;
  }
}

class _Adapter implements HttpClientAdapter {
  _Adapter(this._handle);

  final Future<ResponseBody> Function(RequestOptions options) _handle;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) => _handle(options);

  @override
  void close({bool force = false}) {}
}

ResponseBody _json(int status, Object body) => ResponseBody.fromString(
  jsonEncode(body),
  status,
  headers: {
    Headers.contentTypeHeader: [Headers.jsonContentType],
  },
);

/// A fresh body each time: a ResponseBody's stream can only be read once.
ResponseBody _expired() => _json(401, {
  'success': false,
  'error': {'code': 'TOKEN_EXPIRED', 'message': 'Access token expired'},
});

void main() {
  late _FakeStorage storage;
  late Dio dio;
  late int refreshCalls;
  late int sessionExpiredCalls;
  late Future<ResponseBody> Function(RequestOptions) refreshResponse;

  setUp(() {
    storage = _FakeStorage(accessToken: 'old', refreshToken: 'r1');
    refreshCalls = 0;
    sessionExpiredCalls = 0;
    refreshResponse = (_) async => _json(200, {
      'success': true,
      'data': {
        'tokens': {
          'accessToken': 'new',
          'refreshToken': 'r2',
          'tokenType': 'Bearer',
          'expiresIn': 900,
        },
      },
    });

    final refreshClient = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        expect(options.path, ApiEndpoints.refreshToken);
        refreshCalls++;
        // Long enough for the other requests to fail while it runs.
        await Future<void>.delayed(const Duration(milliseconds: 20));
        return refreshResponse(options);
      });

    dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        return switch (options.headers['Authorization']) {
          'Bearer new' => _json(200, {
            'success': true,
            'data': {'ok': true},
          }),
          _ => _expired(),
        };
      });
    dio.interceptors.addAll([
      EnvelopeInterceptor(),
      AuthInterceptor(
        storage: storage,
        dio: dio,
        refreshClient: refreshClient,
        onSessionExpired: () => sessionExpiredCalls++,
      ),
    ]);
  });

  test('refreshes once for requests that expire together, then retries '
      'them', () async {
    final responses = await Future.wait([
      for (var i = 0; i < 3; i++) dio.get<Object?>('/profile'),
    ]);

    expect(responses.map((r) => r.data), everyElement({'ok': true}));
    expect(refreshCalls, 1);
    expect(storage.accessToken, 'new');
    expect(storage.refreshToken, 'r2');
    expect(sessionExpiredCalls, 0);
  });

  test('ends the session when the refresh token is rejected', () async {
    refreshResponse = (_) async => _json(401, {
      'success': false,
      'error': {
        'code': 'INVALID_REFRESH_TOKEN',
        'message': 'Refresh token has already been used',
      },
    });

    await expectLater(
      dio.get<Object?>('/profile'),
      throwsA(
        isA<DioException>().having(
          (e) => e.response?.statusCode,
          'status',
          401,
        ),
      ),
    );
    expect(sessionExpiredCalls, 1);
    expect(storage.accessToken, isNull);
    expect(storage.refreshToken, isNull);
  });

  test('keeps the session when the refresh fails for another reason', () async {
    refreshResponse = (_) async => _json(503, {
      'success': false,
      'error': {'code': 'INTERNAL_SERVER_ERROR', 'message': 'Down'},
    });

    await expectLater(
      dio.get<Object?>('/profile'),
      throwsA(isA<DioException>()),
    );
    expect(sessionExpiredCalls, 0);
    expect(storage.refreshToken, 'r1');
  });

  test('public endpoints get no token and are never refreshed', () async {
    String? sentAuthorization = 'unset';
    dio.httpClientAdapter = _Adapter((options) async {
      sentAuthorization = options.headers['Authorization'] as String?;
      return _expired();
    });

    await expectLater(
      dio.post<Object?>(
        ApiEndpoints.login,
        options: Options(extra: {AuthInterceptor.skipAuth: true}),
      ),
      throwsA(isA<DioException>()),
    );
    expect(sentAuthorization, isNull);
    expect(refreshCalls, 0);
  });
}
