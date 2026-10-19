// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInResult {

 AppUser get user;/// `true` when the account was just created, so the app continues to
/// profile setup instead of Home.
 bool get isNewUser;
/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInResultCopyWith<SignInResult> get copyWith => _$SignInResultCopyWithImpl<SignInResult>(this as SignInResult, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SignInResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInResult&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.isNewUser, _this.isNewUser) || other.isNewUser == _this.isNewUser));
}


@override
int get hashCode {
  final _this = this as SignInResult;
  return Object.hash(runtimeType,_this.user,_this.isNewUser);
}

@override
String toString() {
  final _this = this as SignInResult;
  return 'SignInResult(user: ${_this.user}, isNewUser: ${_this.isNewUser})';
}


}

/// @nodoc
abstract mixin class $SignInResultCopyWith<$Res>  {
  factory $SignInResultCopyWith(SignInResult value, $Res Function(SignInResult) _then) = _$SignInResultCopyWithImpl;
@useResult
$Res call({
 AppUser user, bool isNewUser
});


$AppUserCopyWith<$Res> get user;

}
/// @nodoc
class _$SignInResultCopyWithImpl<$Res>
    implements $SignInResultCopyWith<$Res> {
  _$SignInResultCopyWithImpl(this._self, this._then);

  final SignInResult _self;
  final $Res Function(SignInResult) _then;

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? isNewUser = null,}) {
  return _then(SignInResult(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserCopyWith<$Res> get user {
  
  return $AppUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInResult].
extension SignInResultPatterns on SignInResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInResult value)  $default,){
final _that = this;
switch (_that) {
case _SignInResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInResult value)?  $default,){
final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppUser user,  bool isNewUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
return $default(_that.user,_that.isNewUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppUser user,  bool isNewUser)  $default,) {final _that = this;
switch (_that) {
case _SignInResult():
return $default(_that.user,_that.isNewUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppUser user,  bool isNewUser)?  $default,) {final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
return $default(_that.user,_that.isNewUser);case _:
  return null;

}
}

}

/// @nodoc


class _SignInResult implements SignInResult {
  const _SignInResult({required this.user, required this.isNewUser});
  

@override final  AppUser user;
/// `true` when the account was just created, so the app continues to
/// profile setup instead of Home.
@override final  bool isNewUser;

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInResultCopyWith<_SignInResult> get copyWith => __$SignInResultCopyWithImpl<_SignInResult>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInResult&&(identical(other.user, user) || other.user == user)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user,isNewUser);
}

@override
String toString() {
    return 'SignInResult(user: $user, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class _$SignInResultCopyWith<$Res> implements $SignInResultCopyWith<$Res> {
  factory _$SignInResultCopyWith(_SignInResult value, $Res Function(_SignInResult) _then) = __$SignInResultCopyWithImpl;
@override @useResult
$Res call({
 AppUser user, bool isNewUser
});


@override $AppUserCopyWith<$Res> get user;

}
/// @nodoc
class __$SignInResultCopyWithImpl<$Res>
    implements _$SignInResultCopyWith<$Res> {
  __$SignInResultCopyWithImpl(this._self, this._then);

  final _SignInResult _self;
  final $Res Function(_SignInResult) _then;

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? isNewUser = null,}) {
  return _then(_SignInResult(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserCopyWith<$Res> get user {
  
  return $AppUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
