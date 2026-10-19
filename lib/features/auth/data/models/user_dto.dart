import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/auth/domain/entities/app_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// The user as the API returns it (`toPublicUser` on the backend).
@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    String? name,
    @Default(false) bool hasPassword,
    @Default('active') String accountStatus,
  }) = _UserDto;
  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  AppUser toEntity() => AppUser(id: id, email: email, name: name);
}

/// `GET /users/me`: `{"user": {...}}`.
@freezed
abstract class UserResponseDto with _$UserResponseDto {
  const factory UserResponseDto({required UserDto user}) = _UserResponseDto;

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);
}
