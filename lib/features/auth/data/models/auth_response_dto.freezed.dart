// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthTokensDto {

 String get accessToken; String get refreshToken;/// Access token lifetime in seconds (15 minutes by default).
 int get expiresIn;
/// Create a copy of AuthTokensDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokensDtoCopyWith<AuthTokensDto> get copyWith => _$AuthTokensDtoCopyWithImpl<AuthTokensDto>(this as AuthTokensDto, _$identity);

  /// Serializes this AuthTokensDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthTokensDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthTokensDto&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.expiresIn, _this.expiresIn) || other.expiresIn == _this.expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthTokensDto;
  return Object.hash(runtimeType,_this.accessToken,_this.refreshToken,_this.expiresIn);
}

@override
String toString() {
  final _this = this as AuthTokensDto;
  return 'AuthTokensDto(accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken}, expiresIn: ${_this.expiresIn})';
}


}

/// @nodoc
abstract mixin class $AuthTokensDtoCopyWith<$Res>  {
  factory $AuthTokensDtoCopyWith(AuthTokensDto value, $Res Function(AuthTokensDto) _then) = _$AuthTokensDtoCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, int expiresIn
});




}
/// @nodoc
class _$AuthTokensDtoCopyWithImpl<$Res>
    implements $AuthTokensDtoCopyWith<$Res> {
  _$AuthTokensDtoCopyWithImpl(this._self, this._then);

  final AuthTokensDto _self;
  final $Res Function(AuthTokensDto) _then;

/// Create a copy of AuthTokensDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,}) {
  return _then(AuthTokensDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthTokensDto].
extension AuthTokensDtoPatterns on AuthTokensDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthTokensDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthTokensDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthTokensDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthTokensDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthTokensDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthTokensDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  int expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthTokensDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  int expiresIn)  $default,) {final _that = this;
switch (_that) {
case _AuthTokensDto():
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  int expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _AuthTokensDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthTokensDto implements AuthTokensDto {
  const _AuthTokensDto({required this.accessToken, required this.refreshToken, required this.expiresIn});
  factory _AuthTokensDto.fromJson(Map<String, dynamic> json) => _$AuthTokensDtoFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
/// Access token lifetime in seconds (15 minutes by default).
@override final  int expiresIn;

/// Create a copy of AuthTokensDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokensDtoCopyWith<_AuthTokensDto> get copyWith => __$AuthTokensDtoCopyWithImpl<_AuthTokensDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokensDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthTokensDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,refreshToken,expiresIn);
}

@override
String toString() {
    return 'AuthTokensDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$AuthTokensDtoCopyWith<$Res> implements $AuthTokensDtoCopyWith<$Res> {
  factory _$AuthTokensDtoCopyWith(_AuthTokensDto value, $Res Function(_AuthTokensDto) _then) = __$AuthTokensDtoCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, int expiresIn
});




}
/// @nodoc
class __$AuthTokensDtoCopyWithImpl<$Res>
    implements _$AuthTokensDtoCopyWith<$Res> {
  __$AuthTokensDtoCopyWithImpl(this._self, this._then);

  final _AuthTokensDto _self;
  final $Res Function(_AuthTokensDto) _then;

/// Create a copy of AuthTokensDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,}) {
  return _then(_AuthTokensDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AuthResponseDto {

 UserDto get user; AuthTokensDto get tokens; bool get isNewUser;
/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseDtoCopyWith<AuthResponseDto> get copyWith => _$AuthResponseDtoCopyWithImpl<AuthResponseDto>(this as AuthResponseDto, _$identity);

  /// Serializes this AuthResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponseDto&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.tokens, _this.tokens) || other.tokens == _this.tokens)&&(identical(other.isNewUser, _this.isNewUser) || other.isNewUser == _this.isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthResponseDto;
  return Object.hash(runtimeType,_this.user,_this.tokens,_this.isNewUser);
}

@override
String toString() {
  final _this = this as AuthResponseDto;
  return 'AuthResponseDto(user: ${_this.user}, tokens: ${_this.tokens}, isNewUser: ${_this.isNewUser})';
}


}

/// @nodoc
abstract mixin class $AuthResponseDtoCopyWith<$Res>  {
  factory $AuthResponseDtoCopyWith(AuthResponseDto value, $Res Function(AuthResponseDto) _then) = _$AuthResponseDtoCopyWithImpl;
@useResult
$Res call({
 UserDto user, AuthTokensDto tokens, bool isNewUser
});


$UserDtoCopyWith<$Res> get user;$AuthTokensDtoCopyWith<$Res> get tokens;

}
/// @nodoc
class _$AuthResponseDtoCopyWithImpl<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  _$AuthResponseDtoCopyWithImpl(this._self, this._then);

  final AuthResponseDto _self;
  final $Res Function(AuthResponseDto) _then;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? tokens = null,Object? isNewUser = null,}) {
  return _then(AuthResponseDto(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as AuthTokensDto,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokensDtoCopyWith<$Res> get tokens {
  
  return $AuthTokensDtoCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponseDto].
extension AuthResponseDtoPatterns on AuthResponseDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponseDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDto user,  AuthTokensDto tokens,  bool isNewUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that.user,_that.tokens,_that.isNewUser);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDto user,  AuthTokensDto tokens,  bool isNewUser)  $default,) {final _that = this;
switch (_that) {
case _AuthResponseDto():
return $default(_that.user,_that.tokens,_that.isNewUser);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDto user,  AuthTokensDto tokens,  bool isNewUser)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that.user,_that.tokens,_that.isNewUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponseDto extends AuthResponseDto {
  const _AuthResponseDto({required this.user, required this.tokens, this.isNewUser = false}): super._();
  factory _AuthResponseDto.fromJson(Map<String, dynamic> json) => _$AuthResponseDtoFromJson(json);

@override final  UserDto user;
@override final  AuthTokensDto tokens;
@override@JsonKey() final  bool isNewUser;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseDtoCopyWith<_AuthResponseDto> get copyWith => __$AuthResponseDtoCopyWithImpl<_AuthResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponseDto&&(identical(other.user, user) || other.user == user)&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user,tokens,isNewUser);
}

@override
String toString() {
    return 'AuthResponseDto(user: $user, tokens: $tokens, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseDtoCopyWith<$Res> implements $AuthResponseDtoCopyWith<$Res> {
  factory _$AuthResponseDtoCopyWith(_AuthResponseDto value, $Res Function(_AuthResponseDto) _then) = __$AuthResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 UserDto user, AuthTokensDto tokens, bool isNewUser
});


@override $UserDtoCopyWith<$Res> get user;@override $AuthTokensDtoCopyWith<$Res> get tokens;

}
/// @nodoc
class __$AuthResponseDtoCopyWithImpl<$Res>
    implements _$AuthResponseDtoCopyWith<$Res> {
  __$AuthResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthResponseDto _self;
  final $Res Function(_AuthResponseDto) _then;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? tokens = null,Object? isNewUser = null,}) {
  return _then(_AuthResponseDto(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as AuthTokensDto,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokensDtoCopyWith<$Res> get tokens {
  
  return $AuthTokensDtoCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}

// dart format on
