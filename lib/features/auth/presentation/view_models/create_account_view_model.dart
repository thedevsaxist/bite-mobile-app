import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/utils/validators.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/log_in_usecase.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/auth_session.dart';

part 'create_account_view_model.freezed.dart';
part 'create_account_view_model.g.dart';

enum AuthMode { signUp, logIn }

@freezed
abstract class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState({
    @Default(AuthMode.signUp) AuthMode mode,
    @Default('') String fullName,
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _CreateAccountState;
}

/// 02 Create account — sign up, with a toggle to log in instead.
@riverpod
class CreateAccountViewModel extends _$CreateAccountViewModel {
  @override
  CreateAccountState build() => const CreateAccountState();

  void setMode(AuthMode mode) =>
      state = state.copyWith(mode: mode, errorMessage: null);

  void setFullName(String value) =>
      state = state.copyWith(fullName: value, errorMessage: null);

  void setEmail(String value) =>
      state = state.copyWith(email: value, errorMessage: null);

  void setPassword(String value) =>
      state = state.copyWith(password: value, errorMessage: null);

  void togglePasswordVisibility() =>
      state = state.copyWith(obscurePassword: !state.obscurePassword);

  /// Signs up or logs in depending on [CreateAccountState.mode]. Returns the
  /// result once signed in, or `null` with [CreateAccountState.errorMessage]
  /// set.
  Future<SignInResult?> submit() async {
    if (state.isSubmitting) return null;
    final isSignUp = state.mode == AuthMode.signUp;

    final error = isSignUp
        ? Validators.required(state.fullName, 'Enter your name') ??
              Validators.email(state.email) ??
              (PasswordRule.allMetBy(state.password)
                  ? null
                  : 'Your password needs to meet every rule below it.')
        : Validators.email(state.email) ??
              Validators.required(state.password, 'Enter your password');
    if (error != null) {
      // Cleared first so the same message shows again on a second tap.
      state = state.copyWith(errorMessage: null);
      state = state.copyWith(errorMessage: error);
      return null;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);
    final result = isSignUp
        ? await ref.read(signUpUseCaseProvider).call((
            name: state.fullName,
            email: state.email,
            password: state.password,
          ))
        : await ref.read(logInUseCaseProvider).call((
            email: state.email,
            password: state.password,
          ));
    if (!ref.mounted) return null;

    switch (result) {
      case Right(:final value):
        ref.read(authSessionProvider.notifier).signedIn();
        state = state.copyWith(isSubmitting: false);
        return value;
      case Left(:final value):
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: value.message,
        );
        return null;
    }
  }

  Future<void> forgotPassword() async {
    // TODO: start the password-reset flow for state.email once the backend
    // has one.
  }
}
