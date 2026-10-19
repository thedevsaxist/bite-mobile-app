// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    _RegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegisterRequestToJson(_RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': ?instance.name,
    };

_LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    _LoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(_LoginRequest instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_FirebaseSignInRequest _$FirebaseSignInRequestFromJson(
  Map<String, dynamic> json,
) => _FirebaseSignInRequest(
  idToken: json['idToken'] as String,
  name: json['name'] as String?,
);

Map<String, dynamic> _$FirebaseSignInRequestToJson(
  _FirebaseSignInRequest instance,
) => <String, dynamic>{'idToken': instance.idToken, 'name': ?instance.name};

_RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) =>
    _RefreshTokenRequest(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$RefreshTokenRequestToJson(
  _RefreshTokenRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};
