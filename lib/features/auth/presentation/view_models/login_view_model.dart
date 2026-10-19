import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/core/utils/validators.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/log_in_usecase.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/auth_session.dart';

part 'login_view_model.freezed.dart';
part 'login_view_model.g.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _LoginState;
}

/// 01a Log in (returning users).
@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => const LoginState();

  void setEmail(String value) =>
      state = state.copyWith(email: value, errorMessage: null);

  void setPassword(String value) =>
      state = state.copyWith(password: value, errorMessage: null);

  void togglePasswordVisibility() =>
      state = state.copyWith(obscurePassword: !state.obscurePassword);

  /// Returns the result once signed in, or `null` (with [LoginState.errorMessage]
  /// set unless the user cancelled).
  Future<SignInResult?> logIn() async {
    final error =
        Validators.email(state.email) ??
        Validators.required(state.password, 'Enter your password');
    if (error != null) {
      // Cleared first so the same message shows again on a second tap.
      state = state.copyWith(errorMessage: null);
      state = state.copyWith(errorMessage: error);
      return null;
    }
    return _signIn(
      () => ref.read(logInUseCaseProvider).call((
        email: state.email,
        password: state.password,
      )),
    );
  }

  Future<SignInResult?> continueWithApple() async {
    // TODO: Sign in with Apple needs a paid Apple developer account. Once
    // there is one, add the capability back (Runner.entitlements), set the
    // backend's APPLE_CLIENT_IDS and replace this with:
    // _signIn(() => ref.read(signInWithAppleUseCaseProvider).call(const NoParams()))
    state = state.copyWith(errorMessage: null);
    state = state.copyWith(
      errorMessage:
          'Sign in with Apple is coming soon. Use Google or email '
          'for now.',
    );
    return null;
  }

  Future<SignInResult?> continueWithGoogle() => _signIn(
    () => ref.read(signInWithGoogleUseCaseProvider).call(const NoParams()),
  );

  Future<void> forgotPassword() async {
    // TODO: start the password-reset flow for state.email once the backend
    // has one.
  }

  Future<SignInResult?> _signIn(
    FutureEither<SignInResult> Function() action,
  ) async {
    if (state.isSubmitting) return null;
    state = state.copyWith(isSubmitting: true, errorMessage: null);

    final result = await action();
    if (!ref.mounted) return null;

    switch (result) {
      case Right(:final value):
        ref.read(authSessionProvider.notifier).signedIn();
        state = state.copyWith(isSubmitting: false);
        return value;
      case Left(:final value):
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: value is CancelledFailure ? null : value.message,
        );
        return null;
    }
  }
}
