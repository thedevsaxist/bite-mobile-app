// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDto {

 int get age; String get sex; double get weightKg; double get heightCm; String get activityLevel; String get weightGoal;
/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<ProfileDto> get copyWith => _$ProfileDtoCopyWithImpl<ProfileDto>(this as ProfileDto, _$identity);

  /// Serializes this ProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDto&&(identical(other.age, _this.age) || other.age == _this.age)&&(identical(other.sex, _this.sex) || other.sex == _this.sex)&&(identical(other.weightKg, _this.weightKg) || other.weightKg == _this.weightKg)&&(identical(other.heightCm, _this.heightCm) || other.heightCm == _this.heightCm)&&(identical(other.activityLevel, _this.activityLevel) || other.activityLevel == _this.activityLevel)&&(identical(other.weightGoal, _this.weightGoal) || other.weightGoal == _this.weightGoal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileDto;
  return Object.hash(runtimeType,_this.age,_this.sex,_this.weightKg,_this.heightCm,_this.activityLevel,_this.weightGoal);
}

@override
String toString() {
  final _this = this as ProfileDto;
  return 'ProfileDto(age: ${_this.age}, sex: ${_this.sex}, weightKg: ${_this.weightKg}, heightCm: ${_this.heightCm}, activityLevel: ${_this.activityLevel}, weightGoal: ${_this.weightGoal})';
}


}

/// @nodoc
abstract mixin class $ProfileDtoCopyWith<$Res>  {
  factory $ProfileDtoCopyWith(ProfileDto value, $Res Function(ProfileDto) _then) = _$ProfileDtoCopyWithImpl;
@useResult
$Res call({
 int age, String sex, double weightKg, double heightCm, String activityLevel, String weightGoal
});




}
/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._self, this._then);

  final ProfileDto _self;
  final $Res Function(ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? age = null,Object? sex = null,Object? weightKg = null,Object? heightCm = null,Object? activityLevel = null,Object? weightGoal = null,}) {
  return _then(ProfileDto(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,weightGoal: null == weightGoal ? _self.weightGoal : weightGoal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDto].
extension ProfileDtoPatterns on ProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int age,  String sex,  double weightKg,  double heightCm,  String activityLevel,  String weightGoal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.age,_that.sex,_that.weightKg,_that.heightCm,_that.activityLevel,_that.weightGoal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int age,  String sex,  double weightKg,  double heightCm,  String activityLevel,  String weightGoal)  $default,) {final _that = this;
switch (_that) {
case _ProfileDto():
return $default(_that.age,_that.sex,_that.weightKg,_that.heightCm,_that.activityLevel,_that.weightGoal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int age,  String sex,  double weightKg,  double heightCm,  String activityLevel,  String weightGoal)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.age,_that.sex,_that.weightKg,_that.heightCm,_that.activityLevel,_that.weightGoal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDto extends ProfileDto {
  const _ProfileDto({required this.age, required this.sex, required this.weightKg, required this.heightCm, required this.activityLevel, required this.weightGoal}): super._();
  factory _ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

@override final  int age;
@override final  String sex;
@override final  double weightKg;
@override final  double heightCm;
@override final  String activityLevel;
@override final  String weightGoal;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDtoCopyWith<_ProfileDto> get copyWith => __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDto&&(identical(other.age, age) || other.age == age)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.weightGoal, weightGoal) || other.weightGoal == weightGoal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,age,sex,weightKg,heightCm,activityLevel,weightGoal);
}

@override
String toString() {
    return 'ProfileDto(age: $age, sex: $sex, weightKg: $weightKg, heightCm: $heightCm, activityLevel: $activityLevel, weightGoal: $weightGoal)';
}


}

/// @nodoc
abstract mixin class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(_ProfileDto value, $Res Function(_ProfileDto) _then) = __$ProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 int age, String sex, double weightKg, double heightCm, String activityLevel, String weightGoal
});




}
/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(this._self, this._then);

  final _ProfileDto _self;
  final $Res Function(_ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? age = null,Object? sex = null,Object? weightKg = null,Object? heightCm = null,Object? activityLevel = null,Object? weightGoal = null,}) {
  return _then(_ProfileDto(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,weightGoal: null == weightGoal ? _self.weightGoal : weightGoal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DietaryReferenceDto {

 int get dailyCalorieReference; int get bmr; int get maintenanceCalories;
/// Create a copy of DietaryReferenceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietaryReferenceDtoCopyWith<DietaryReferenceDto> get copyWith => _$DietaryReferenceDtoCopyWithImpl<DietaryReferenceDto>(this as DietaryReferenceDto, _$identity);

  /// Serializes this DietaryReferenceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DietaryReferenceDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryReferenceDto&&(identical(other.dailyCalorieReference, _this.dailyCalorieReference) || other.dailyCalorieReference == _this.dailyCalorieReference)&&(identical(other.bmr, _this.bmr) || other.bmr == _this.bmr)&&(identical(other.maintenanceCalories, _this.maintenanceCalories) || other.maintenanceCalories == _this.maintenanceCalories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DietaryReferenceDto;
  return Object.hash(runtimeType,_this.dailyCalorieReference,_this.bmr,_this.maintenanceCalories);
}

@override
String toString() {
  final _this = this as DietaryReferenceDto;
  return 'DietaryReferenceDto(dailyCalorieReference: ${_this.dailyCalorieReference}, bmr: ${_this.bmr}, maintenanceCalories: ${_this.maintenanceCalories})';
}


}

/// @nodoc
abstract mixin class $DietaryReferenceDtoCopyWith<$Res>  {
  factory $DietaryReferenceDtoCopyWith(DietaryReferenceDto value, $Res Function(DietaryReferenceDto) _then) = _$DietaryReferenceDtoCopyWithImpl;
@useResult
$Res call({
 int dailyCalorieReference, int bmr, int maintenanceCalories
});




}
/// @nodoc
class _$DietaryReferenceDtoCopyWithImpl<$Res>
    implements $DietaryReferenceDtoCopyWith<$Res> {
  _$DietaryReferenceDtoCopyWithImpl(this._self, this._then);

  final DietaryReferenceDto _self;
  final $Res Function(DietaryReferenceDto) _then;

/// Create a copy of DietaryReferenceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dailyCalorieReference = null,Object? bmr = null,Object? maintenanceCalories = null,}) {
  return _then(DietaryReferenceDto(
dailyCalorieReference: null == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int,bmr: null == bmr ? _self.bmr : bmr // ignore: cast_nullable_to_non_nullable
as int,maintenanceCalories: null == maintenanceCalories ? _self.maintenanceCalories : maintenanceCalories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DietaryReferenceDto].
extension DietaryReferenceDtoPatterns on DietaryReferenceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DietaryReferenceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DietaryReferenceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DietaryReferenceDto value)  $default,){
final _that = this;
switch (_that) {
case _DietaryReferenceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DietaryReferenceDto value)?  $default,){
final _that = this;
switch (_that) {
case _DietaryReferenceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dailyCalorieReference,  int bmr,  int maintenanceCalories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DietaryReferenceDto() when $default != null:
return $default(_that.dailyCalorieReference,_that.bmr,_that.maintenanceCalories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dailyCalorieReference,  int bmr,  int maintenanceCalories)  $default,) {final _that = this;
switch (_that) {
case _DietaryReferenceDto():
return $default(_that.dailyCalorieReference,_that.bmr,_that.maintenanceCalories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dailyCalorieReference,  int bmr,  int maintenanceCalories)?  $default,) {final _that = this;
switch (_that) {
case _DietaryReferenceDto() when $default != null:
return $default(_that.dailyCalorieReference,_that.bmr,_that.maintenanceCalories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DietaryReferenceDto implements DietaryReferenceDto {
  const _DietaryReferenceDto({required this.dailyCalorieReference, required this.bmr, required this.maintenanceCalories});
  factory _DietaryReferenceDto.fromJson(Map<String, dynamic> json) => _$DietaryReferenceDtoFromJson(json);

@override final  int dailyCalorieReference;
@override final  int bmr;
@override final  int maintenanceCalories;

/// Create a copy of DietaryReferenceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DietaryReferenceDtoCopyWith<_DietaryReferenceDto> get copyWith => __$DietaryReferenceDtoCopyWithImpl<_DietaryReferenceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DietaryReferenceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DietaryReferenceDto&&(identical(other.dailyCalorieReference, dailyCalorieReference) || other.dailyCalorieReference == dailyCalorieReference)&&(identical(other.bmr, bmr) || other.bmr == bmr)&&(identical(other.maintenanceCalories, maintenanceCalories) || other.maintenanceCalories == maintenanceCalories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,dailyCalorieReference,bmr,maintenanceCalories);
}

@override
String toString() {
    return 'DietaryReferenceDto(dailyCalorieReference: $dailyCalorieReference, bmr: $bmr, maintenanceCalories: $maintenanceCalories)';
}


}

/// @nodoc
abstract mixin class _$DietaryReferenceDtoCopyWith<$Res> implements $DietaryReferenceDtoCopyWith<$Res> {
  factory _$DietaryReferenceDtoCopyWith(_DietaryReferenceDto value, $Res Function(_DietaryReferenceDto) _then) = __$DietaryReferenceDtoCopyWithImpl;
@override @useResult
$Res call({
 int dailyCalorieReference, int bmr, int maintenanceCalories
});




}
/// @nodoc
class __$DietaryReferenceDtoCopyWithImpl<$Res>
    implements _$DietaryReferenceDtoCopyWith<$Res> {
  __$DietaryReferenceDtoCopyWithImpl(this._self, this._then);

  final _DietaryReferenceDto _self;
  final $Res Function(_DietaryReferenceDto) _then;

/// Create a copy of DietaryReferenceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dailyCalorieReference = null,Object? bmr = null,Object? maintenanceCalories = null,}) {
  return _then(_DietaryReferenceDto(
dailyCalorieReference: null == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int,bmr: null == bmr ? _self.bmr : bmr // ignore: cast_nullable_to_non_nullable
as int,maintenanceCalories: null == maintenanceCalories ? _self.maintenanceCalories : maintenanceCalories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProfileResponseDto {

 ProfileDto get profile;
/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseDtoCopyWith<ProfileResponseDto> get copyWith => _$ProfileResponseDtoCopyWithImpl<ProfileResponseDto>(this as ProfileResponseDto, _$identity);

  /// Serializes this ProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponseDto&&(identical(other.profile, _this.profile) || other.profile == _this.profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileResponseDto;
  return Object.hash(runtimeType,_this.profile);
}

@override
String toString() {
  final _this = this as ProfileResponseDto;
  return 'ProfileResponseDto(profile: ${_this.profile})';
}


}

/// @nodoc
abstract mixin class $ProfileResponseDtoCopyWith<$Res>  {
  factory $ProfileResponseDtoCopyWith(ProfileResponseDto value, $Res Function(ProfileResponseDto) _then) = _$ProfileResponseDtoCopyWithImpl;
@useResult
$Res call({
 ProfileDto profile
});


$ProfileDtoCopyWith<$Res> get profile;

}
/// @nodoc
class _$ProfileResponseDtoCopyWithImpl<$Res>
    implements $ProfileResponseDtoCopyWith<$Res> {
  _$ProfileResponseDtoCopyWithImpl(this._self, this._then);

  final ProfileResponseDto _self;
  final $Res Function(ProfileResponseDto) _then;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,}) {
  return _then(ProfileResponseDto(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,
  ));
}
/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponseDto].
extension ProfileResponseDtoPatterns on ProfileResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileDto profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
return $default(_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileDto profile)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseDto():
return $default(_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileDto profile)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
return $default(_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponseDto implements ProfileResponseDto {
  const _ProfileResponseDto({required this.profile});
  factory _ProfileResponseDto.fromJson(Map<String, dynamic> json) => _$ProfileResponseDtoFromJson(json);

@override final  ProfileDto profile;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseDtoCopyWith<_ProfileResponseDto> get copyWith => __$ProfileResponseDtoCopyWithImpl<_ProfileResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponseDto&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,profile);
}

@override
String toString() {
    return 'ProfileResponseDto(profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseDtoCopyWith<$Res> implements $ProfileResponseDtoCopyWith<$Res> {
  factory _$ProfileResponseDtoCopyWith(_ProfileResponseDto value, $Res Function(_ProfileResponseDto) _then) = __$ProfileResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 ProfileDto profile
});


@override $ProfileDtoCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileResponseDtoCopyWithImpl<$Res>
    implements _$ProfileResponseDtoCopyWith<$Res> {
  __$ProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _ProfileResponseDto _self;
  final $Res Function(_ProfileResponseDto) _then;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(_ProfileResponseDto(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,
  ));
}

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$DietaryReferenceResponseDto {

 DietaryReferenceDto get dietaryReference;
/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietaryReferenceResponseDtoCopyWith<DietaryReferenceResponseDto> get copyWith => _$DietaryReferenceResponseDtoCopyWithImpl<DietaryReferenceResponseDto>(this as DietaryReferenceResponseDto, _$identity);

  /// Serializes this DietaryReferenceResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DietaryReferenceResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryReferenceResponseDto&&(identical(other.dietaryReference, _this.dietaryReference) || other.dietaryReference == _this.dietaryReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DietaryReferenceResponseDto;
  return Object.hash(runtimeType,_this.dietaryReference);
}

@override
String toString() {
  final _this = this as DietaryReferenceResponseDto;
  return 'DietaryReferenceResponseDto(dietaryReference: ${_this.dietaryReference})';
}


}

/// @nodoc
abstract mixin class $DietaryReferenceResponseDtoCopyWith<$Res>  {
  factory $DietaryReferenceResponseDtoCopyWith(DietaryReferenceResponseDto value, $Res Function(DietaryReferenceResponseDto) _then) = _$DietaryReferenceResponseDtoCopyWithImpl;
@useResult
$Res call({
 DietaryReferenceDto dietaryReference
});


$DietaryReferenceDtoCopyWith<$Res> get dietaryReference;

}
/// @nodoc
class _$DietaryReferenceResponseDtoCopyWithImpl<$Res>
    implements $DietaryReferenceResponseDtoCopyWith<$Res> {
  _$DietaryReferenceResponseDtoCopyWithImpl(this._self, this._then);

  final DietaryReferenceResponseDto _self;
  final $Res Function(DietaryReferenceResponseDto) _then;

/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dietaryReference = null,}) {
  return _then(DietaryReferenceResponseDto(
dietaryReference: null == dietaryReference ? _self.dietaryReference : dietaryReference // ignore: cast_nullable_to_non_nullable
as DietaryReferenceDto,
  ));
}
/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DietaryReferenceDtoCopyWith<$Res> get dietaryReference {
  
  return $DietaryReferenceDtoCopyWith<$Res>(_self.dietaryReference, (value) {
    return _then(_self.copyWith(dietaryReference: value));
  });
}
}


/// Adds pattern-matching-related methods to [DietaryReferenceResponseDto].
extension DietaryReferenceResponseDtoPatterns on DietaryReferenceResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DietaryReferenceResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DietaryReferenceResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DietaryReferenceResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DietaryReferenceDto dietaryReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto() when $default != null:
return $default(_that.dietaryReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DietaryReferenceDto dietaryReference)  $default,) {final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto():
return $default(_that.dietaryReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DietaryReferenceDto dietaryReference)?  $default,) {final _that = this;
switch (_that) {
case _DietaryReferenceResponseDto() when $default != null:
return $default(_that.dietaryReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DietaryReferenceResponseDto implements DietaryReferenceResponseDto {
  const _DietaryReferenceResponseDto({required this.dietaryReference});
  factory _DietaryReferenceResponseDto.fromJson(Map<String, dynamic> json) => _$DietaryReferenceResponseDtoFromJson(json);

@override final  DietaryReferenceDto dietaryReference;

/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DietaryReferenceResponseDtoCopyWith<_DietaryReferenceResponseDto> get copyWith => __$DietaryReferenceResponseDtoCopyWithImpl<_DietaryReferenceResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DietaryReferenceResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DietaryReferenceResponseDto&&(identical(other.dietaryReference, dietaryReference) || other.dietaryReference == dietaryReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,dietaryReference);
}

@override
String toString() {
    return 'DietaryReferenceResponseDto(dietaryReference: $dietaryReference)';
}


}

/// @nodoc
abstract mixin class _$DietaryReferenceResponseDtoCopyWith<$Res> implements $DietaryReferenceResponseDtoCopyWith<$Res> {
  factory _$DietaryReferenceResponseDtoCopyWith(_DietaryReferenceResponseDto value, $Res Function(_DietaryReferenceResponseDto) _then) = __$DietaryReferenceResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 DietaryReferenceDto dietaryReference
});


@override $DietaryReferenceDtoCopyWith<$Res> get dietaryReference;

}
/// @nodoc
class __$DietaryReferenceResponseDtoCopyWithImpl<$Res>
    implements _$DietaryReferenceResponseDtoCopyWith<$Res> {
  __$DietaryReferenceResponseDtoCopyWithImpl(this._self, this._then);

  final _DietaryReferenceResponseDto _self;
  final $Res Function(_DietaryReferenceResponseDto) _then;

/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dietaryReference = null,}) {
  return _then(_DietaryReferenceResponseDto(
dietaryReference: null == dietaryReference ? _self.dietaryReference : dietaryReference // ignore: cast_nullable_to_non_nullable
as DietaryReferenceDto,
  ));
}

/// Create a copy of DietaryReferenceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DietaryReferenceDtoCopyWith<$Res> get dietaryReference {
  
  return $DietaryReferenceDtoCopyWith<$Res>(_self.dietaryReference, (value) {
    return _then(_self.copyWith(dietaryReference: value));
  });
}
}


/// @nodoc
mixin _$SaveProfileResponseDto {

 ProfileDto get profile; DietaryReferenceDto get dietaryReference;
/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveProfileResponseDtoCopyWith<SaveProfileResponseDto> get copyWith => _$SaveProfileResponseDtoCopyWithImpl<SaveProfileResponseDto>(this as SaveProfileResponseDto, _$identity);

  /// Serializes this SaveProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SaveProfileResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveProfileResponseDto&&(identical(other.profile, _this.profile) || other.profile == _this.profile)&&(identical(other.dietaryReference, _this.dietaryReference) || other.dietaryReference == _this.dietaryReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SaveProfileResponseDto;
  return Object.hash(runtimeType,_this.profile,_this.dietaryReference);
}

@override
String toString() {
  final _this = this as SaveProfileResponseDto;
  return 'SaveProfileResponseDto(profile: ${_this.profile}, dietaryReference: ${_this.dietaryReference})';
}


}

/// @nodoc
abstract mixin class $SaveProfileResponseDtoCopyWith<$Res>  {
  factory $SaveProfileResponseDtoCopyWith(SaveProfileResponseDto value, $Res Function(SaveProfileResponseDto) _then) = _$SaveProfileResponseDtoCopyWithImpl;
@useResult
$Res call({
 ProfileDto profile, DietaryReferenceDto dietaryReference
});


$ProfileDtoCopyWith<$Res> get profile;$DietaryReferenceDtoCopyWith<$Res> get dietaryReference;

}
/// @nodoc
class _$SaveProfileResponseDtoCopyWithImpl<$Res>
    implements $SaveProfileResponseDtoCopyWith<$Res> {
  _$SaveProfileResponseDtoCopyWithImpl(this._self, this._then);

  final SaveProfileResponseDto _self;
  final $Res Function(SaveProfileResponseDto) _then;

/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? dietaryReference = null,}) {
  return _then(SaveProfileResponseDto(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,dietaryReference: null == dietaryReference ? _self.dietaryReference : dietaryReference // ignore: cast_nullable_to_non_nullable
as DietaryReferenceDto,
  ));
}
/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DietaryReferenceDtoCopyWith<$Res> get dietaryReference {
  
  return $DietaryReferenceDtoCopyWith<$Res>(_self.dietaryReference, (value) {
    return _then(_self.copyWith(dietaryReference: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveProfileResponseDto].
extension SaveProfileResponseDtoPatterns on SaveProfileResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveProfileResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveProfileResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SaveProfileResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveProfileResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SaveProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileDto profile,  DietaryReferenceDto dietaryReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveProfileResponseDto() when $default != null:
return $default(_that.profile,_that.dietaryReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileDto profile,  DietaryReferenceDto dietaryReference)  $default,) {final _that = this;
switch (_that) {
case _SaveProfileResponseDto():
return $default(_that.profile,_that.dietaryReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileDto profile,  DietaryReferenceDto dietaryReference)?  $default,) {final _that = this;
switch (_that) {
case _SaveProfileResponseDto() when $default != null:
return $default(_that.profile,_that.dietaryReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveProfileResponseDto implements SaveProfileResponseDto {
  const _SaveProfileResponseDto({required this.profile, required this.dietaryReference});
  factory _SaveProfileResponseDto.fromJson(Map<String, dynamic> json) => _$SaveProfileResponseDtoFromJson(json);

@override final  ProfileDto profile;
@override final  DietaryReferenceDto dietaryReference;

/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveProfileResponseDtoCopyWith<_SaveProfileResponseDto> get copyWith => __$SaveProfileResponseDtoCopyWithImpl<_SaveProfileResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveProfileResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveProfileResponseDto&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.dietaryReference, dietaryReference) || other.dietaryReference == dietaryReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,profile,dietaryReference);
}

@override
String toString() {
    return 'SaveProfileResponseDto(profile: $profile, dietaryReference: $dietaryReference)';
}


}

/// @nodoc
abstract mixin class _$SaveProfileResponseDtoCopyWith<$Res> implements $SaveProfileResponseDtoCopyWith<$Res> {
  factory _$SaveProfileResponseDtoCopyWith(_SaveProfileResponseDto value, $Res Function(_SaveProfileResponseDto) _then) = __$SaveProfileResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 ProfileDto profile, DietaryReferenceDto dietaryReference
});


@override $ProfileDtoCopyWith<$Res> get profile;@override $DietaryReferenceDtoCopyWith<$Res> get dietaryReference;

}
/// @nodoc
class __$SaveProfileResponseDtoCopyWithImpl<$Res>
    implements _$SaveProfileResponseDtoCopyWith<$Res> {
  __$SaveProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _SaveProfileResponseDto _self;
  final $Res Function(_SaveProfileResponseDto) _then;

/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? dietaryReference = null,}) {
  return _then(_SaveProfileResponseDto(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,dietaryReference: null == dietaryReference ? _self.dietaryReference : dietaryReference // ignore: cast_nullable_to_non_nullable
as DietaryReferenceDto,
  ));
}

/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of SaveProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DietaryReferenceDtoCopyWith<$Res> get dietaryReference {
  
  return $DietaryReferenceDtoCopyWith<$Res>(_self.dietaryReference, (value) {
    return _then(_self.copyWith(dietaryReference: value));
  });
}
}

// dart format on
