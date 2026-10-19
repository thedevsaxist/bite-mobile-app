import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/auth/data/models/user_dto.dart';
import 'package:calorie_estimator/features/auth/domain/entities/sign_in_result.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
abstract class AuthTokensDto with _$AuthTokensDto {
  const factory AuthTokensDto({
    required String accessToken,
    required String refreshToken,

    /// Access token lifetime in seconds (15 minutes by default).
    required int expiresIn,
  }) = _AuthTokensDto;

  factory AuthTokensDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensDtoFromJson(json);
}

/// Returned by register, login, Google and Apple sign-in.
@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    required UserDto user,
    required AuthTokensDto tokens,
    @Default(false) bool isNewUser,
  }) = _AuthResponseDto;
  const AuthResponseDto._();

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);

  SignInResult toEntity() =>
      SignInResult(user: user.toEntity(), isNewUser: isNewUser);
}
