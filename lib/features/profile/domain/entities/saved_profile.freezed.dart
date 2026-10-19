// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedProfile {

 UserProfile get profile;/// kcal per day: an estimate, not dietary advice.
 int get dailyCalorieReference;
/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedProfileCopyWith<SavedProfile> get copyWith => _$SavedProfileCopyWithImpl<SavedProfile>(this as SavedProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SavedProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedProfile&&(identical(other.profile, _this.profile) || other.profile == _this.profile)&&(identical(other.dailyCalorieReference, _this.dailyCalorieReference) || other.dailyCalorieReference == _this.dailyCalorieReference));
}


@override
int get hashCode {
  final _this = this as SavedProfile;
  return Object.hash(runtimeType,_this.profile,_this.dailyCalorieReference);
}

@override
String toString() {
  final _this = this as SavedProfile;
  return 'SavedProfile(profile: ${_this.profile}, dailyCalorieReference: ${_this.dailyCalorieReference})';
}


}

/// @nodoc
abstract mixin class $SavedProfileCopyWith<$Res>  {
  factory $SavedProfileCopyWith(SavedProfile value, $Res Function(SavedProfile) _then) = _$SavedProfileCopyWithImpl;
@useResult
$Res call({
 UserProfile profile, int dailyCalorieReference
});


$UserProfileCopyWith<$Res> get profile;

}
/// @nodoc
class _$SavedProfileCopyWithImpl<$Res>
    implements $SavedProfileCopyWith<$Res> {
  _$SavedProfileCopyWithImpl(this._self, this._then);

  final SavedProfile _self;
  final $Res Function(SavedProfile) _then;

/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? dailyCalorieReference = null,}) {
  return _then(SavedProfile(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile,dailyCalorieReference: null == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get profile {
  
  return $UserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavedProfile].
extension SavedProfilePatterns on SavedProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedProfile value)  $default,){
final _that = this;
switch (_that) {
case _SavedProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedProfile value)?  $default,){
final _that = this;
switch (_that) {
case _SavedProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile profile,  int dailyCalorieReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedProfile() when $default != null:
return $default(_that.profile,_that.dailyCalorieReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile profile,  int dailyCalorieReference)  $default,) {final _that = this;
switch (_that) {
case _SavedProfile():
return $default(_that.profile,_that.dailyCalorieReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile profile,  int dailyCalorieReference)?  $default,) {final _that = this;
switch (_that) {
case _SavedProfile() when $default != null:
return $default(_that.profile,_that.dailyCalorieReference);case _:
  return null;

}
}

}

/// @nodoc


class _SavedProfile implements SavedProfile {
  const _SavedProfile({required this.profile, required this.dailyCalorieReference});
  

@override final  UserProfile profile;
/// kcal per day: an estimate, not dietary advice.
@override final  int dailyCalorieReference;

/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedProfileCopyWith<_SavedProfile> get copyWith => __$SavedProfileCopyWithImpl<_SavedProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedProfile&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.dailyCalorieReference, dailyCalorieReference) || other.dailyCalorieReference == dailyCalorieReference));
}


@override
int get hashCode {
    return Object.hash(runtimeType,profile,dailyCalorieReference);
}

@override
String toString() {
    return 'SavedProfile(profile: $profile, dailyCalorieReference: $dailyCalorieReference)';
}


}

/// @nodoc
abstract mixin class _$SavedProfileCopyWith<$Res> implements $SavedProfileCopyWith<$Res> {
  factory _$SavedProfileCopyWith(_SavedProfile value, $Res Function(_SavedProfile) _then) = __$SavedProfileCopyWithImpl;
@override @useResult
$Res call({
 UserProfile profile, int dailyCalorieReference
});


@override $UserProfileCopyWith<$Res> get profile;

}
/// @nodoc
class __$SavedProfileCopyWithImpl<$Res>
    implements _$SavedProfileCopyWith<$Res> {
  __$SavedProfileCopyWithImpl(this._self, this._then);

  final _SavedProfile _self;
  final $Res Function(_SavedProfile) _then;

/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? dailyCalorieReference = null,}) {
  return _then(_SavedProfile(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile,dailyCalorieReference: null == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SavedProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get profile {
  
  return $UserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
