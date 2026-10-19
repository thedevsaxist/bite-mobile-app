// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

 String get id; String get email; String? get name; bool get hasPassword; String get accountStatus;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.hasPassword, _this.hasPassword) || other.hasPassword == _this.hasPassword)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserDto;
  return Object.hash(runtimeType,_this.id,_this.email,_this.name,_this.hasPassword,_this.accountStatus);
}

@override
String toString() {
  final _this = this as UserDto;
  return 'UserDto(id: ${_this.id}, email: ${_this.email}, name: ${_this.name}, hasPassword: ${_this.hasPassword}, accountStatus: ${_this.accountStatus})';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String id, String email, String? name, bool hasPassword, String accountStatus
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = freezed,Object? hasPassword = null,Object? accountStatus = null,}) {
  return _then(UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String? name,  bool hasPassword,  String accountStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.hasPassword,_that.accountStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String? name,  bool hasPassword,  String accountStatus)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.email,_that.name,_that.hasPassword,_that.accountStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String? name,  bool hasPassword,  String accountStatus)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.hasPassword,_that.accountStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto extends UserDto {
  const _UserDto({required this.id, required this.email, this.name, this.hasPassword = false, this.accountStatus = 'active'}): super._();
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String id;
@override final  String email;
@override final  String? name;
@override@JsonKey() final  bool hasPassword;
@override@JsonKey() final  String accountStatus;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,name,hasPassword,accountStatus);
}

@override
String toString() {
    return 'UserDto(id: $id, email: $email, name: $name, hasPassword: $hasPassword, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String? name, bool hasPassword, String accountStatus
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = freezed,Object? hasPassword = null,Object? accountStatus = null,}) {
  return _then(_UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserResponseDto {

 UserDto get user;
/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseDtoCopyWith<UserResponseDto> get copyWith => _$UserResponseDtoCopyWithImpl<UserResponseDto>(this as UserResponseDto, _$identity);

  /// Serializes this UserResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponseDto&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserResponseDto;
  return Object.hash(runtimeType,_this.user);
}

@override
String toString() {
  final _this = this as UserResponseDto;
  return 'UserResponseDto(user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $UserResponseDtoCopyWith<$Res>  {
  factory $UserResponseDtoCopyWith(UserResponseDto value, $Res Function(UserResponseDto) _then) = _$UserResponseDtoCopyWithImpl;
@useResult
$Res call({
 UserDto user
});


$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$UserResponseDtoCopyWithImpl<$Res>
    implements $UserResponseDtoCopyWith<$Res> {
  _$UserResponseDtoCopyWithImpl(this._self, this._then);

  final UserResponseDto _self;
  final $Res Function(UserResponseDto) _then;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(UserResponseDto(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserResponseDto].
extension UserResponseDtoPatterns on UserResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDto user)  $default,) {final _that = this;
switch (_that) {
case _UserResponseDto():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDto user)?  $default,) {final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponseDto implements UserResponseDto {
  const _UserResponseDto({required this.user});
  factory _UserResponseDto.fromJson(Map<String, dynamic> json) => _$UserResponseDtoFromJson(json);

@override final  UserDto user;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseDtoCopyWith<_UserResponseDto> get copyWith => __$UserResponseDtoCopyWithImpl<_UserResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponseDto&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'UserResponseDto(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserResponseDtoCopyWith<$Res> implements $UserResponseDtoCopyWith<$Res> {
  factory _$UserResponseDtoCopyWith(_UserResponseDto value, $Res Function(_UserResponseDto) _then) = __$UserResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 UserDto user
});


@override $UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$UserResponseDtoCopyWithImpl<$Res>
    implements _$UserResponseDtoCopyWith<$Res> {
  __$UserResponseDtoCopyWithImpl(this._self, this._then);

  final _UserResponseDto _self;
  final $Res Function(_UserResponseDto) _then;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UserResponseDto(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
