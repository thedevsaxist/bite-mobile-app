// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfile {

 int get age; Sex get sex; double get heightCm; double get weightKg; ActivityLevel get activityLevel; WeightGoal get goal;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UserProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.age, _this.age) || other.age == _this.age)&&(identical(other.sex, _this.sex) || other.sex == _this.sex)&&(identical(other.heightCm, _this.heightCm) || other.heightCm == _this.heightCm)&&(identical(other.weightKg, _this.weightKg) || other.weightKg == _this.weightKg)&&(identical(other.activityLevel, _this.activityLevel) || other.activityLevel == _this.activityLevel)&&(identical(other.goal, _this.goal) || other.goal == _this.goal));
}


@override
int get hashCode {
  final _this = this as UserProfile;
  return Object.hash(runtimeType,_this.age,_this.sex,_this.heightCm,_this.weightKg,_this.activityLevel,_this.goal);
}

@override
String toString() {
  final _this = this as UserProfile;
  return 'UserProfile(age: ${_this.age}, sex: ${_this.sex}, heightCm: ${_this.heightCm}, weightKg: ${_this.weightKg}, activityLevel: ${_this.activityLevel}, goal: ${_this.goal})';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 int age, Sex sex, double heightCm, double weightKg, ActivityLevel activityLevel, WeightGoal goal
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? age = null,Object? sex = null,Object? heightCm = null,Object? weightKg = null,Object? activityLevel = null,Object? goal = null,}) {
  return _then(UserProfile(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as ActivityLevel,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as WeightGoal,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int age,  Sex sex,  double heightCm,  double weightKg,  ActivityLevel activityLevel,  WeightGoal goal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.age,_that.sex,_that.heightCm,_that.weightKg,_that.activityLevel,_that.goal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int age,  Sex sex,  double heightCm,  double weightKg,  ActivityLevel activityLevel,  WeightGoal goal)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.age,_that.sex,_that.heightCm,_that.weightKg,_that.activityLevel,_that.goal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int age,  Sex sex,  double heightCm,  double weightKg,  ActivityLevel activityLevel,  WeightGoal goal)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.age,_that.sex,_that.heightCm,_that.weightKg,_that.activityLevel,_that.goal);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfile extends UserProfile {
  const _UserProfile({required this.age, required this.sex, required this.heightCm, required this.weightKg, required this.activityLevel, required this.goal}): super._();
  

@override final  int age;
@override final  Sex sex;
@override final  double heightCm;
@override final  double weightKg;
@override final  ActivityLevel activityLevel;
@override final  WeightGoal goal;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.age, age) || other.age == age)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.goal, goal) || other.goal == goal));
}


@override
int get hashCode {
    return Object.hash(runtimeType,age,sex,heightCm,weightKg,activityLevel,goal);
}

@override
String toString() {
    return 'UserProfile(age: $age, sex: $sex, heightCm: $heightCm, weightKg: $weightKg, activityLevel: $activityLevel, goal: $goal)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 int age, Sex sex, double heightCm, double weightKg, ActivityLevel activityLevel, WeightGoal goal
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? age = null,Object? sex = null,Object? heightCm = null,Object? weightKg = null,Object? activityLevel = null,Object? goal = null,}) {
  return _then(_UserProfile(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as ActivityLevel,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as WeightGoal,
  ));
}


}

// dart format on
