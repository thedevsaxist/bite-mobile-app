// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccountState {

 AuthMode get mode; String get fullName; String get email; String get password; bool get obscurePassword; bool get isSubmitting; String? get errorMessage;
/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountStateCopyWith<CreateAccountState> get copyWith => _$CreateAccountStateCopyWithImpl<CreateAccountState>(this as CreateAccountState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateAccountState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountState&&(identical(other.mode, _this.mode) || other.mode == _this.mode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.obscurePassword, _this.obscurePassword) || other.obscurePassword == _this.obscurePassword)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as CreateAccountState;
  return Object.hash(runtimeType,_this.mode,_this.fullName,_this.email,_this.password,_this.obscurePassword,_this.isSubmitting,_this.errorMessage);
}

@override
String toString() {
  final _this = this as CreateAccountState;
  return 'CreateAccountState(mode: ${_this.mode}, fullName: ${_this.fullName}, email: ${_this.email}, password: ${_this.password}, obscurePassword: ${_this.obscurePassword}, isSubmitting: ${_this.isSubmitting}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $CreateAccountStateCopyWith<$Res>  {
  factory $CreateAccountStateCopyWith(CreateAccountState value, $Res Function(CreateAccountState) _then) = _$CreateAccountStateCopyWithImpl;
@useResult
$Res call({
 AuthMode mode, String fullName, String email, String password, bool obscurePassword, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._self, this._then);

  final CreateAccountState _self;
  final $Res Function(CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? fullName = null,Object? email = null,Object? password = null,Object? obscurePassword = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(CreateAccountState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAccountState].
extension CreateAccountStatePatterns on CreateAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthMode mode,  String fullName,  String email,  String password,  bool obscurePassword,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.mode,_that.fullName,_that.email,_that.password,_that.obscurePassword,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthMode mode,  String fullName,  String email,  String password,  bool obscurePassword,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState():
return $default(_that.mode,_that.fullName,_that.email,_that.password,_that.obscurePassword,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthMode mode,  String fullName,  String email,  String password,  bool obscurePassword,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.mode,_that.fullName,_that.email,_that.password,_that.obscurePassword,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountState implements CreateAccountState {
  const _CreateAccountState({this.mode = AuthMode.signUp, this.fullName = '', this.email = '', this.password = '', this.obscurePassword = true, this.isSubmitting = false, this.errorMessage});
  

@override@JsonKey() final  AuthMode mode;
@override@JsonKey() final  String fullName;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool obscurePassword;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountStateCopyWith<_CreateAccountState> get copyWith => __$CreateAccountStateCopyWithImpl<_CreateAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,mode,fullName,email,password,obscurePassword,isSubmitting,errorMessage);
}

@override
String toString() {
    return 'CreateAccountState(mode: $mode, fullName: $fullName, email: $email, password: $password, obscurePassword: $obscurePassword, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountStateCopyWith<$Res> implements $CreateAccountStateCopyWith<$Res> {
  factory _$CreateAccountStateCopyWith(_CreateAccountState value, $Res Function(_CreateAccountState) _then) = __$CreateAccountStateCopyWithImpl;
@override @useResult
$Res call({
 AuthMode mode, String fullName, String email, String password, bool obscurePassword, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$CreateAccountStateCopyWithImpl<$Res>
    implements _$CreateAccountStateCopyWith<$Res> {
  __$CreateAccountStateCopyWithImpl(this._self, this._then);

  final _CreateAccountState _self;
  final $Res Function(_CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? fullName = null,Object? email = null,Object? password = null,Object? obscurePassword = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_CreateAccountState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
