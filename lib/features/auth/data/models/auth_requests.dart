import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_requests.freezed.dart';
part 'auth_requests.g.dart';

// The backend rejects unknown keys and treats an explicit `null` as invalid,
// so optional fields are left out instead of sent as null.

@freezed
abstract class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String email,
    required String password,
    @JsonKey(includeIfNull: false) String? name,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

/// A Firebase ID token from a Google or Apple sign-in.
@freezed
abstract class FirebaseSignInRequest with _$FirebaseSignInRequest {
  const factory FirebaseSignInRequest({
    required String idToken,

    /// Apple shares the name only on the first sign-in.
    @JsonKey(includeIfNull: false) String? name,
  }) = _FirebaseSignInRequest;

  factory FirebaseSignInRequest.fromJson(Map<String, dynamic> json) =>
      _$FirebaseSignInRequestFromJson(json);
}

@freezed
abstract class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({required String refreshToken}) =
      _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}
