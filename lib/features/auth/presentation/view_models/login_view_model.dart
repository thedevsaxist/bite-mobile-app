import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  /// Returns `true` when the user is signed in and can go to Home.
  Future<bool> logIn() async {
    // TODO: validate the form, call LogInUseCase(email, password), set
    // isSubmitting while waiting and map a Failure to errorMessage.
    return true;
  }

  Future<bool> continueWithApple() async {
    // TODO: Sign in with Apple, then exchange the credential with the backend.
    return true;
  }

  Future<bool> continueWithGoogle() async {
    // TODO: Google Sign-In, then exchange the credential with the backend.
    return true;
  }

  Future<void> forgotPassword() async {
    // TODO: start the password-reset flow for state.email.
  }
}
