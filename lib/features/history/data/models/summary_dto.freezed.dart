// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DaySummaryDto {

/// A calendar date, `2026-10-15`.
 String get date; NutrientsDto get totals; int get mealCount; int? get dailyCalorieReference;
/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DaySummaryDtoCopyWith<DaySummaryDto> get copyWith => _$DaySummaryDtoCopyWithImpl<DaySummaryDto>(this as DaySummaryDto, _$identity);

  /// Serializes this DaySummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DaySummaryDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DaySummaryDto&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&(identical(other.mealCount, _this.mealCount) || other.mealCount == _this.mealCount)&&(identical(other.dailyCalorieReference, _this.dailyCalorieReference) || other.dailyCalorieReference == _this.dailyCalorieReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DaySummaryDto;
  return Object.hash(runtimeType,_this.date,_this.totals,_this.mealCount,_this.dailyCalorieReference);
}

@override
String toString() {
  final _this = this as DaySummaryDto;
  return 'DaySummaryDto(date: ${_this.date}, totals: ${_this.totals}, mealCount: ${_this.mealCount}, dailyCalorieReference: ${_this.dailyCalorieReference})';
}


}

/// @nodoc
abstract mixin class $DaySummaryDtoCopyWith<$Res>  {
  factory $DaySummaryDtoCopyWith(DaySummaryDto value, $Res Function(DaySummaryDto) _then) = _$DaySummaryDtoCopyWithImpl;
@useResult
$Res call({
 String date, NutrientsDto totals, int mealCount, int? dailyCalorieReference
});


$NutrientsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class _$DaySummaryDtoCopyWithImpl<$Res>
    implements $DaySummaryDtoCopyWith<$Res> {
  _$DaySummaryDtoCopyWithImpl(this._self, this._then);

  final DaySummaryDto _self;
  final $Res Function(DaySummaryDto) _then;

/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? totals = null,Object? mealCount = null,Object? dailyCalorieReference = freezed,}) {
  return _then(DaySummaryDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,dailyCalorieReference: freezed == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get totals {
  
  return $NutrientsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [DaySummaryDto].
extension DaySummaryDtoPatterns on DaySummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DaySummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DaySummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DaySummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _DaySummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DaySummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _DaySummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  NutrientsDto totals,  int mealCount,  int? dailyCalorieReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DaySummaryDto() when $default != null:
return $default(_that.date,_that.totals,_that.mealCount,_that.dailyCalorieReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  NutrientsDto totals,  int mealCount,  int? dailyCalorieReference)  $default,) {final _that = this;
switch (_that) {
case _DaySummaryDto():
return $default(_that.date,_that.totals,_that.mealCount,_that.dailyCalorieReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  NutrientsDto totals,  int mealCount,  int? dailyCalorieReference)?  $default,) {final _that = this;
switch (_that) {
case _DaySummaryDto() when $default != null:
return $default(_that.date,_that.totals,_that.mealCount,_that.dailyCalorieReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DaySummaryDto extends DaySummaryDto {
  const _DaySummaryDto({required this.date, required this.totals, required this.mealCount, this.dailyCalorieReference}): super._();
  factory _DaySummaryDto.fromJson(Map<String, dynamic> json) => _$DaySummaryDtoFromJson(json);

/// A calendar date, `2026-10-15`.
@override final  String date;
@override final  NutrientsDto totals;
@override final  int mealCount;
@override final  int? dailyCalorieReference;

/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DaySummaryDtoCopyWith<_DaySummaryDto> get copyWith => __$DaySummaryDtoCopyWithImpl<_DaySummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DaySummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DaySummaryDto&&(identical(other.date, date) || other.date == date)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.mealCount, mealCount) || other.mealCount == mealCount)&&(identical(other.dailyCalorieReference, dailyCalorieReference) || other.dailyCalorieReference == dailyCalorieReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,totals,mealCount,dailyCalorieReference);
}

@override
String toString() {
    return 'DaySummaryDto(date: $date, totals: $totals, mealCount: $mealCount, dailyCalorieReference: $dailyCalorieReference)';
}


}

/// @nodoc
abstract mixin class _$DaySummaryDtoCopyWith<$Res> implements $DaySummaryDtoCopyWith<$Res> {
  factory _$DaySummaryDtoCopyWith(_DaySummaryDto value, $Res Function(_DaySummaryDto) _then) = __$DaySummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 String date, NutrientsDto totals, int mealCount, int? dailyCalorieReference
});


@override $NutrientsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class __$DaySummaryDtoCopyWithImpl<$Res>
    implements _$DaySummaryDtoCopyWith<$Res> {
  __$DaySummaryDtoCopyWithImpl(this._self, this._then);

  final _DaySummaryDto _self;
  final $Res Function(_DaySummaryDto) _then;

/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totals = null,Object? mealCount = null,Object? dailyCalorieReference = freezed,}) {
  return _then(_DaySummaryDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,dailyCalorieReference: freezed == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of DaySummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get totals {
  
  return $NutrientsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// @nodoc
mixin _$DailySummaryResponseDto {

 DaySummaryDto get summary;
/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailySummaryResponseDtoCopyWith<DailySummaryResponseDto> get copyWith => _$DailySummaryResponseDtoCopyWithImpl<DailySummaryResponseDto>(this as DailySummaryResponseDto, _$identity);

  /// Serializes this DailySummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DailySummaryResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySummaryResponseDto&&(identical(other.summary, _this.summary) || other.summary == _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DailySummaryResponseDto;
  return Object.hash(runtimeType,_this.summary);
}

@override
String toString() {
  final _this = this as DailySummaryResponseDto;
  return 'DailySummaryResponseDto(summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $DailySummaryResponseDtoCopyWith<$Res>  {
  factory $DailySummaryResponseDtoCopyWith(DailySummaryResponseDto value, $Res Function(DailySummaryResponseDto) _then) = _$DailySummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 DaySummaryDto summary
});


$DaySummaryDtoCopyWith<$Res> get summary;

}
/// @nodoc
class _$DailySummaryResponseDtoCopyWithImpl<$Res>
    implements $DailySummaryResponseDtoCopyWith<$Res> {
  _$DailySummaryResponseDtoCopyWithImpl(this._self, this._then);

  final DailySummaryResponseDto _self;
  final $Res Function(DailySummaryResponseDto) _then;

/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,}) {
  return _then(DailySummaryResponseDto(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DaySummaryDto,
  ));
}
/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DaySummaryDtoCopyWith<$Res> get summary {
  
  return $DaySummaryDtoCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailySummaryResponseDto].
extension DailySummaryResponseDtoPatterns on DailySummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailySummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailySummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailySummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DailySummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailySummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailySummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DaySummaryDto summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailySummaryResponseDto() when $default != null:
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DaySummaryDto summary)  $default,) {final _that = this;
switch (_that) {
case _DailySummaryResponseDto():
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DaySummaryDto summary)?  $default,) {final _that = this;
switch (_that) {
case _DailySummaryResponseDto() when $default != null:
return $default(_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailySummaryResponseDto implements DailySummaryResponseDto {
  const _DailySummaryResponseDto({required this.summary});
  factory _DailySummaryResponseDto.fromJson(Map<String, dynamic> json) => _$DailySummaryResponseDtoFromJson(json);

@override final  DaySummaryDto summary;

/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailySummaryResponseDtoCopyWith<_DailySummaryResponseDto> get copyWith => __$DailySummaryResponseDtoCopyWithImpl<_DailySummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailySummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailySummaryResponseDto&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,summary);
}

@override
String toString() {
    return 'DailySummaryResponseDto(summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$DailySummaryResponseDtoCopyWith<$Res> implements $DailySummaryResponseDtoCopyWith<$Res> {
  factory _$DailySummaryResponseDtoCopyWith(_DailySummaryResponseDto value, $Res Function(_DailySummaryResponseDto) _then) = __$DailySummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 DaySummaryDto summary
});


@override $DaySummaryDtoCopyWith<$Res> get summary;

}
/// @nodoc
class __$DailySummaryResponseDtoCopyWithImpl<$Res>
    implements _$DailySummaryResponseDtoCopyWith<$Res> {
  __$DailySummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _DailySummaryResponseDto _self;
  final $Res Function(_DailySummaryResponseDto) _then;

/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(_DailySummaryResponseDto(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DaySummaryDto,
  ));
}

/// Create a copy of DailySummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DaySummaryDtoCopyWith<$Res> get summary {
  
  return $DaySummaryDtoCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$RangeSummaryDto {

 List<DaySummaryDto> get days; NutrientsDto get totals; int get loggedDays; NutrientsDto get averagePerLoggedDay;
/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeSummaryDtoCopyWith<RangeSummaryDto> get copyWith => _$RangeSummaryDtoCopyWithImpl<RangeSummaryDto>(this as RangeSummaryDto, _$identity);

  /// Serializes this RangeSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RangeSummaryDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeSummaryDto&&const DeepCollectionEquality().equals(other.days, _this.days)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&(identical(other.loggedDays, _this.loggedDays) || other.loggedDays == _this.loggedDays)&&(identical(other.averagePerLoggedDay, _this.averagePerLoggedDay) || other.averagePerLoggedDay == _this.averagePerLoggedDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RangeSummaryDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.days),_this.totals,_this.loggedDays,_this.averagePerLoggedDay);
}

@override
String toString() {
  final _this = this as RangeSummaryDto;
  return 'RangeSummaryDto(days: ${_this.days}, totals: ${_this.totals}, loggedDays: ${_this.loggedDays}, averagePerLoggedDay: ${_this.averagePerLoggedDay})';
}


}

/// @nodoc
abstract mixin class $RangeSummaryDtoCopyWith<$Res>  {
  factory $RangeSummaryDtoCopyWith(RangeSummaryDto value, $Res Function(RangeSummaryDto) _then) = _$RangeSummaryDtoCopyWithImpl;
@useResult
$Res call({
 List<DaySummaryDto> days, NutrientsDto totals, int loggedDays, NutrientsDto averagePerLoggedDay
});


$NutrientsDtoCopyWith<$Res> get totals;$NutrientsDtoCopyWith<$Res> get averagePerLoggedDay;

}
/// @nodoc
class _$RangeSummaryDtoCopyWithImpl<$Res>
    implements $RangeSummaryDtoCopyWith<$Res> {
  _$RangeSummaryDtoCopyWithImpl(this._self, this._then);

  final RangeSummaryDto _self;
  final $Res Function(RangeSummaryDto) _then;

/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? days = null,Object? totals = null,Object? loggedDays = null,Object? averagePerLoggedDay = null,}) {
  return _then(RangeSummaryDto(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<DaySummaryDto>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,loggedDays: null == loggedDays ? _self.loggedDays : loggedDays // ignore: cast_nullable_to_non_nullable
as int,averagePerLoggedDay: null == averagePerLoggedDay ? _self.averagePerLoggedDay : averagePerLoggedDay // ignore: cast_nullable_to_non_nullable
as NutrientsDto,
  ));
}
/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get totals {
  
  return $NutrientsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get averagePerLoggedDay {
  
  return $NutrientsDtoCopyWith<$Res>(_self.averagePerLoggedDay, (value) {
    return _then(_self.copyWith(averagePerLoggedDay: value));
  });
}
}


/// Adds pattern-matching-related methods to [RangeSummaryDto].
extension RangeSummaryDtoPatterns on RangeSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RangeSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RangeSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RangeSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _RangeSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RangeSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _RangeSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DaySummaryDto> days,  NutrientsDto totals,  int loggedDays,  NutrientsDto averagePerLoggedDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RangeSummaryDto() when $default != null:
return $default(_that.days,_that.totals,_that.loggedDays,_that.averagePerLoggedDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DaySummaryDto> days,  NutrientsDto totals,  int loggedDays,  NutrientsDto averagePerLoggedDay)  $default,) {final _that = this;
switch (_that) {
case _RangeSummaryDto():
return $default(_that.days,_that.totals,_that.loggedDays,_that.averagePerLoggedDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DaySummaryDto> days,  NutrientsDto totals,  int loggedDays,  NutrientsDto averagePerLoggedDay)?  $default,) {final _that = this;
switch (_that) {
case _RangeSummaryDto() when $default != null:
return $default(_that.days,_that.totals,_that.loggedDays,_that.averagePerLoggedDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RangeSummaryDto extends RangeSummaryDto {
  const _RangeSummaryDto({required  List<DaySummaryDto> days, required this.totals, required this.loggedDays, required this.averagePerLoggedDay}): _days = days,super._();
  factory _RangeSummaryDto.fromJson(Map<String, dynamic> json) => _$RangeSummaryDtoFromJson(json);

 final  List<DaySummaryDto> _days;
@override List<DaySummaryDto> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override final  NutrientsDto totals;
@override final  int loggedDays;
@override final  NutrientsDto averagePerLoggedDay;

/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RangeSummaryDtoCopyWith<_RangeSummaryDto> get copyWith => __$RangeSummaryDtoCopyWithImpl<_RangeSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RangeSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RangeSummaryDto&&const DeepCollectionEquality().equals(other.days, _days)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.loggedDays, loggedDays) || other.loggedDays == loggedDays)&&(identical(other.averagePerLoggedDay, averagePerLoggedDay) || other.averagePerLoggedDay == averagePerLoggedDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_days),totals,loggedDays,averagePerLoggedDay);
}

@override
String toString() {
    return 'RangeSummaryDto(days: $days, totals: $totals, loggedDays: $loggedDays, averagePerLoggedDay: $averagePerLoggedDay)';
}


}

/// @nodoc
abstract mixin class _$RangeSummaryDtoCopyWith<$Res> implements $RangeSummaryDtoCopyWith<$Res> {
  factory _$RangeSummaryDtoCopyWith(_RangeSummaryDto value, $Res Function(_RangeSummaryDto) _then) = __$RangeSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 List<DaySummaryDto> days, NutrientsDto totals, int loggedDays, NutrientsDto averagePerLoggedDay
});


@override $NutrientsDtoCopyWith<$Res> get totals;@override $NutrientsDtoCopyWith<$Res> get averagePerLoggedDay;

}
/// @nodoc
class __$RangeSummaryDtoCopyWithImpl<$Res>
    implements _$RangeSummaryDtoCopyWith<$Res> {
  __$RangeSummaryDtoCopyWithImpl(this._self, this._then);

  final _RangeSummaryDto _self;
  final $Res Function(_RangeSummaryDto) _then;

/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? days = null,Object? totals = null,Object? loggedDays = null,Object? averagePerLoggedDay = null,}) {
  return _then(_RangeSummaryDto(
days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<DaySummaryDto>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,loggedDays: null == loggedDays ? _self.loggedDays : loggedDays // ignore: cast_nullable_to_non_nullable
as int,averagePerLoggedDay: null == averagePerLoggedDay ? _self.averagePerLoggedDay : averagePerLoggedDay // ignore: cast_nullable_to_non_nullable
as NutrientsDto,
  ));
}

/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get totals {
  
  return $NutrientsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of RangeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get averagePerLoggedDay {
  
  return $NutrientsDtoCopyWith<$Res>(_self.averagePerLoggedDay, (value) {
    return _then(_self.copyWith(averagePerLoggedDay: value));
  });
}
}


/// @nodoc
mixin _$RangeSummaryResponseDto {

 RangeSummaryDto get summary;
/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeSummaryResponseDtoCopyWith<RangeSummaryResponseDto> get copyWith => _$RangeSummaryResponseDtoCopyWithImpl<RangeSummaryResponseDto>(this as RangeSummaryResponseDto, _$identity);

  /// Serializes this RangeSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RangeSummaryResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeSummaryResponseDto&&(identical(other.summary, _this.summary) || other.summary == _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RangeSummaryResponseDto;
  return Object.hash(runtimeType,_this.summary);
}

@override
String toString() {
  final _this = this as RangeSummaryResponseDto;
  return 'RangeSummaryResponseDto(summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $RangeSummaryResponseDtoCopyWith<$Res>  {
  factory $RangeSummaryResponseDtoCopyWith(RangeSummaryResponseDto value, $Res Function(RangeSummaryResponseDto) _then) = _$RangeSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 RangeSummaryDto summary
});


$RangeSummaryDtoCopyWith<$Res> get summary;

}
/// @nodoc
class _$RangeSummaryResponseDtoCopyWithImpl<$Res>
    implements $RangeSummaryResponseDtoCopyWith<$Res> {
  _$RangeSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final RangeSummaryResponseDto _self;
  final $Res Function(RangeSummaryResponseDto) _then;

/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,}) {
  return _then(RangeSummaryResponseDto(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as RangeSummaryDto,
  ));
}
/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RangeSummaryDtoCopyWith<$Res> get summary {
  
  return $RangeSummaryDtoCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [RangeSummaryResponseDto].
extension RangeSummaryResponseDtoPatterns on RangeSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RangeSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RangeSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RangeSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _RangeSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RangeSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _RangeSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RangeSummaryDto summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RangeSummaryResponseDto() when $default != null:
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RangeSummaryDto summary)  $default,) {final _that = this;
switch (_that) {
case _RangeSummaryResponseDto():
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RangeSummaryDto summary)?  $default,) {final _that = this;
switch (_that) {
case _RangeSummaryResponseDto() when $default != null:
return $default(_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RangeSummaryResponseDto implements RangeSummaryResponseDto {
  const _RangeSummaryResponseDto({required this.summary});
  factory _RangeSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$RangeSummaryResponseDtoFromJson(json);

@override final  RangeSummaryDto summary;

/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RangeSummaryResponseDtoCopyWith<_RangeSummaryResponseDto> get copyWith => __$RangeSummaryResponseDtoCopyWithImpl<_RangeSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RangeSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RangeSummaryResponseDto&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,summary);
}

@override
String toString() {
    return 'RangeSummaryResponseDto(summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$RangeSummaryResponseDtoCopyWith<$Res> implements $RangeSummaryResponseDtoCopyWith<$Res> {
  factory _$RangeSummaryResponseDtoCopyWith(_RangeSummaryResponseDto value, $Res Function(_RangeSummaryResponseDto) _then) = __$RangeSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 RangeSummaryDto summary
});


@override $RangeSummaryDtoCopyWith<$Res> get summary;

}
/// @nodoc
class __$RangeSummaryResponseDtoCopyWithImpl<$Res>
    implements _$RangeSummaryResponseDtoCopyWith<$Res> {
  __$RangeSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _RangeSummaryResponseDto _self;
  final $Res Function(_RangeSummaryResponseDto) _then;

/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(_RangeSummaryResponseDto(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as RangeSummaryDto,
  ));
}

/// Create a copy of RangeSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RangeSummaryDtoCopyWith<$Res> get summary {
  
  return $RangeSummaryDtoCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
