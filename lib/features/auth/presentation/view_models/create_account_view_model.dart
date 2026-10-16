import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

/// 02 Create account (optional) — sign up, with a toggle to log in instead.
@riverpod
class CreateAccountViewModel extends _$CreateAccountViewModel {
  @override
  CreateAccountState build() => const CreateAccountState();

  void setMode(AuthMode mode) =>
      state = state.copyWith(mode: mode, errorMessage: null);

  void setFullName(String value) => state = state.copyWith(fullName: value);

  void setEmail(String value) =>
      state = state.copyWith(email: value, errorMessage: null);

  void setPassword(String value) => state = state.copyWith(password: value);

  void togglePasswordVisibility() =>
      state = state.copyWith(obscurePassword: !state.obscurePassword);

  /// Signs up or logs in depending on [CreateAccountState.mode]. Returns
  /// `true` on success.
  Future<bool> submit() async {
    // TODO: validate (all PasswordRules met when signing up), then call
    // SignUpUseCase or LogInUseCase. Set isSubmitting while waiting and map a
    // Failure to errorMessage.
    return true;
  }

  Future<void> forgotPassword() async {
    // TODO: start the password-reset flow for state.email.
  }
}
