import 'package:fpdart/fpdart.dart';

import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';

abstract interface class AuthRepository {
  FutureEither<SignInResult> signUp({
    required String name,
    required String email,
    required String password,
  });

  FutureEither<SignInResult> logIn({
    required String email,
    required String password,
  });

  /// Fails with `CancelledFailure` when the user closes the Google sheet.
  FutureEither<SignInResult> signInWithGoogle();

  /// Fails with `CancelledFailure` when the user closes the Apple sheet.
  FutureEither<SignInResult> signInWithApple();

  /// The signed-in user from the backend, or the cached copy when offline.
  FutureEither<AppUser> getCurrentUser();

  /// The user from the stored session, or `null` when no one is signed in
  /// or the session has ended.
  FutureEither<AppUser?> restoreSession();

  /// Ends the session on the backend (best effort) and clears everything
  /// stored for the user on this device.
  FutureEither<Unit> logOut();
}
