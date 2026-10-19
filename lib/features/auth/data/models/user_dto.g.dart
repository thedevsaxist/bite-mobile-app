// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: json['id'] as String,
  email: json['email'] as String,
  name: json['name'] as String?,
  hasPassword: json['hasPassword'] as bool? ?? false,
  accountStatus: json['accountStatus'] as String? ?? 'active',
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'hasPassword': instance.hasPassword,
  'accountStatus': instance.accountStatus,
};

_UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    _UserResponseDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseDtoToJson(_UserResponseDto instance) =>
    <String, dynamic>{'user': instance.user};
