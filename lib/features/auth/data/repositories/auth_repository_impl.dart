import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/data/datasources/auth_api_service.dart';
import 'package:calorie_estimator/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:calorie_estimator/features/auth/data/datasources/social_sign_in_data_source.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_requests.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_response_dto.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/domain/repositories/auth_repository.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) => AuthRepositoryImpl(
  ref.watch(authApiServiceProvider),
  ref.watch(authLocalDataSourceProvider),
  ref.watch(socialSignInDataSourceProvider),
);

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._api, this._local, this._social);

  final AuthApiService _api;
  final AuthLocalDataSource _local;
  final SocialSignInDataSource _social;

  @override
  FutureEither<SignInResult> signUp({
    required String name,
    required String email,
    required String password,
  }) => guard(
    () => _startSession(
      _api.register(
        RegisterRequest(
          email: email.trim(),
          password: password,
          name: name.trim().isEmpty ? null : name.trim(),
        ),
      ),
    ),
  );

  @override
  FutureEither<SignInResult> logIn({
    required String email,
    required String password,
  }) => guard(
    () => _startSession(
      _api.logIn(LoginRequest(email: email.trim(), password: password)),
    ),
  );

  @override
  FutureEither<SignInResult> signInWithGoogle() =>
      guard(() async => _firebaseSession(await _social.signInWithGoogle()));

  @override
  FutureEither<SignInResult> signInWithApple() =>
      guard(() async => _firebaseSession(await _social.signInWithApple()));

  @override
  FutureEither<AppUser> getCurrentUser() async {
    final remote = await guard(() async {
      final response = await _api.getMe();
      await _local.cacheUser(response.user);
      return response.user.toEntity();
    });

    if (remote case Left(value: final failure) when failure.isUnreachable) {
      if (await _cachedUser() case final cached?) return Right(cached);
    }
    return remote;
  }

  @override
  FutureEither<AppUser?> restoreSession() async {
    if (!await _hasSession()) return const Right(null);

    final user = await getCurrentUser();
    if (user case Left(value: final UnauthorizedFailure failure)) {
      // The interceptor clears the tokens when the backend ends the session.
      // If they are still here, the refresh itself failed (e.g. offline), so
      // keep the session and start from the cache.
      if (await _hasSession()) {
        return switch (await _cachedUser()) {
          final cached? => Right(cached),
          null => Left(failure),
        };
      }
      return guard(() async {
        await _local.clear();
        return null;
      });
    }
    return user;
  }

  @override
  FutureEither<Unit> logOut() => guard(() async {
    // Ending the session on the backend is best effort: the user is signed
    // out on this device either way.
    try {
      final refreshToken = await _local.readRefreshToken();
      if (refreshToken != null) {
        await _api.logOut(RefreshTokenRequest(refreshToken: refreshToken));
      }
      await _social.signOut();
    } catch (e) {
      debugPrint('Log out: $e');
    }
    await _local.clear();
    return unit;
  });

  Future<SignInResult> _firebaseSession(FirebaseCredential credential) =>
      _startSession(
        _api.signInWithFirebase(
          FirebaseSignInRequest(
            idToken: credential.idToken,
            name: credential.name,
          ),
        ),
      );

  Future<SignInResult> _startSession(Future<AuthResponseDto> request) async {
    final response = await request;
    await _local.saveTokens(response.tokens);
    await _local.cacheUser(response.user);
    return response.toEntity();
  }

  Future<bool> _hasSession() async =>
      (await guard(_local.hasSession)).getOrElse((_) => false);

  Future<AppUser?> _cachedUser() async =>
      switch (await guard(_local.getCachedUser)) {
        Right(value: final cached?) => cached.toEntity(),
        _ => null,
      };
}
