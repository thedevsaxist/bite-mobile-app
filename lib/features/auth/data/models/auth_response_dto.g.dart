// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokensDto _$AuthTokensDtoFromJson(Map<String, dynamic> json) =>
    _AuthTokensDto(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
    );

Map<String, dynamic> _$AuthTokensDtoToJson(_AuthTokensDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };

_AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthResponseDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      tokens: AuthTokensDto.fromJson(json['tokens'] as Map<String, dynamic>),
      isNewUser: json['isNewUser'] as bool? ?? false,
    );

Map<String, dynamic> _$AuthResponseDtoToJson(_AuthResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
      'isNewUser': instance.isNewUser,
    };
