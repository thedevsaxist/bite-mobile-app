// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intake_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DaySummary {

 DateTime get date; Nutrients get totals; int get mealCount;/// The reference that applied that day; null before the profile existed.
 int? get dailyCalorieReference;
/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DaySummaryCopyWith<DaySummary> get copyWith => _$DaySummaryCopyWithImpl<DaySummary>(this as DaySummary, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DaySummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DaySummary&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&(identical(other.mealCount, _this.mealCount) || other.mealCount == _this.mealCount)&&(identical(other.dailyCalorieReference, _this.dailyCalorieReference) || other.dailyCalorieReference == _this.dailyCalorieReference));
}


@override
int get hashCode {
  final _this = this as DaySummary;
  return Object.hash(runtimeType,_this.date,_this.totals,_this.mealCount,_this.dailyCalorieReference);
}

@override
String toString() {
  final _this = this as DaySummary;
  return 'DaySummary(date: ${_this.date}, totals: ${_this.totals}, mealCount: ${_this.mealCount}, dailyCalorieReference: ${_this.dailyCalorieReference})';
}


}

/// @nodoc
abstract mixin class $DaySummaryCopyWith<$Res>  {
  factory $DaySummaryCopyWith(DaySummary value, $Res Function(DaySummary) _then) = _$DaySummaryCopyWithImpl;
@useResult
$Res call({
 DateTime date, Nutrients totals, int mealCount, int? dailyCalorieReference
});


$NutrientsCopyWith<$Res> get totals;

}
/// @nodoc
class _$DaySummaryCopyWithImpl<$Res>
    implements $DaySummaryCopyWith<$Res> {
  _$DaySummaryCopyWithImpl(this._self, this._then);

  final DaySummary _self;
  final $Res Function(DaySummary) _then;

/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? totals = null,Object? mealCount = null,Object? dailyCalorieReference = freezed,}) {
  return _then(DaySummary(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,dailyCalorieReference: freezed == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get totals {
  
  return $NutrientsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [DaySummary].
extension DaySummaryPatterns on DaySummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DaySummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DaySummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DaySummary value)  $default,){
final _that = this;
switch (_that) {
case _DaySummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DaySummary value)?  $default,){
final _that = this;
switch (_that) {
case _DaySummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  Nutrients totals,  int mealCount,  int? dailyCalorieReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DaySummary() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  Nutrients totals,  int mealCount,  int? dailyCalorieReference)  $default,) {final _that = this;
switch (_that) {
case _DaySummary():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  Nutrients totals,  int mealCount,  int? dailyCalorieReference)?  $default,) {final _that = this;
switch (_that) {
case _DaySummary() when $default != null:
return $default(_that.date,_that.totals,_that.mealCount,_that.dailyCalorieReference);case _:
  return null;

}
}

}

/// @nodoc


class _DaySummary implements DaySummary {
  const _DaySummary({required this.date, required this.totals, required this.mealCount, this.dailyCalorieReference});
  

@override final  DateTime date;
@override final  Nutrients totals;
@override final  int mealCount;
/// The reference that applied that day; null before the profile existed.
@override final  int? dailyCalorieReference;

/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DaySummaryCopyWith<_DaySummary> get copyWith => __$DaySummaryCopyWithImpl<_DaySummary>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DaySummary&&(identical(other.date, date) || other.date == date)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.mealCount, mealCount) || other.mealCount == mealCount)&&(identical(other.dailyCalorieReference, dailyCalorieReference) || other.dailyCalorieReference == dailyCalorieReference));
}


@override
int get hashCode {
    return Object.hash(runtimeType,date,totals,mealCount,dailyCalorieReference);
}

@override
String toString() {
    return 'DaySummary(date: $date, totals: $totals, mealCount: $mealCount, dailyCalorieReference: $dailyCalorieReference)';
}


}

/// @nodoc
abstract mixin class _$DaySummaryCopyWith<$Res> implements $DaySummaryCopyWith<$Res> {
  factory _$DaySummaryCopyWith(_DaySummary value, $Res Function(_DaySummary) _then) = __$DaySummaryCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, Nutrients totals, int mealCount, int? dailyCalorieReference
});


@override $NutrientsCopyWith<$Res> get totals;

}
/// @nodoc
class __$DaySummaryCopyWithImpl<$Res>
    implements _$DaySummaryCopyWith<$Res> {
  __$DaySummaryCopyWithImpl(this._self, this._then);

  final _DaySummary _self;
  final $Res Function(_DaySummary) _then;

/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totals = null,Object? mealCount = null,Object? dailyCalorieReference = freezed,}) {
  return _then(_DaySummary(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,dailyCalorieReference: freezed == dailyCalorieReference ? _self.dailyCalorieReference : dailyCalorieReference // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of DaySummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get totals {
  
  return $NutrientsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

/// @nodoc
mixin _$IntakeSummary {

/// Every day in the range, including empty ones.
 List<DaySummary> get days; Nutrients get totals; int get loggedDays;/// Averaged over days with at least one meal.
 Nutrients get averagePerLoggedDay;
/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntakeSummaryCopyWith<IntakeSummary> get copyWith => _$IntakeSummaryCopyWithImpl<IntakeSummary>(this as IntakeSummary, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as IntakeSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntakeSummary&&const DeepCollectionEquality().equals(other.days, _this.days)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&(identical(other.loggedDays, _this.loggedDays) || other.loggedDays == _this.loggedDays)&&(identical(other.averagePerLoggedDay, _this.averagePerLoggedDay) || other.averagePerLoggedDay == _this.averagePerLoggedDay));
}


@override
int get hashCode {
  final _this = this as IntakeSummary;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.days),_this.totals,_this.loggedDays,_this.averagePerLoggedDay);
}

@override
String toString() {
  final _this = this as IntakeSummary;
  return 'IntakeSummary(days: ${_this.days}, totals: ${_this.totals}, loggedDays: ${_this.loggedDays}, averagePerLoggedDay: ${_this.averagePerLoggedDay})';
}


}

/// @nodoc
abstract mixin class $IntakeSummaryCopyWith<$Res>  {
  factory $IntakeSummaryCopyWith(IntakeSummary value, $Res Function(IntakeSummary) _then) = _$IntakeSummaryCopyWithImpl;
@useResult
$Res call({
 List<DaySummary> days, Nutrients totals, int loggedDays, Nutrients averagePerLoggedDay
});


$NutrientsCopyWith<$Res> get totals;$NutrientsCopyWith<$Res> get averagePerLoggedDay;

}
/// @nodoc
class _$IntakeSummaryCopyWithImpl<$Res>
    implements $IntakeSummaryCopyWith<$Res> {
  _$IntakeSummaryCopyWithImpl(this._self, this._then);

  final IntakeSummary _self;
  final $Res Function(IntakeSummary) _then;

/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? days = null,Object? totals = null,Object? loggedDays = null,Object? averagePerLoggedDay = null,}) {
  return _then(IntakeSummary(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<DaySummary>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,loggedDays: null == loggedDays ? _self.loggedDays : loggedDays // ignore: cast_nullable_to_non_nullable
as int,averagePerLoggedDay: null == averagePerLoggedDay ? _self.averagePerLoggedDay : averagePerLoggedDay // ignore: cast_nullable_to_non_nullable
as Nutrients,
  ));
}
/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get totals {
  
  return $NutrientsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get averagePerLoggedDay {
  
  return $NutrientsCopyWith<$Res>(_self.averagePerLoggedDay, (value) {
    return _then(_self.copyWith(averagePerLoggedDay: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntakeSummary].
extension IntakeSummaryPatterns on IntakeSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntakeSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntakeSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntakeSummary value)  $default,){
final _that = this;
switch (_that) {
case _IntakeSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntakeSummary value)?  $default,){
final _that = this;
switch (_that) {
case _IntakeSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DaySummary> days,  Nutrients totals,  int loggedDays,  Nutrients averagePerLoggedDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntakeSummary() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DaySummary> days,  Nutrients totals,  int loggedDays,  Nutrients averagePerLoggedDay)  $default,) {final _that = this;
switch (_that) {
case _IntakeSummary():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DaySummary> days,  Nutrients totals,  int loggedDays,  Nutrients averagePerLoggedDay)?  $default,) {final _that = this;
switch (_that) {
case _IntakeSummary() when $default != null:
return $default(_that.days,_that.totals,_that.loggedDays,_that.averagePerLoggedDay);case _:
  return null;

}
}

}

/// @nodoc


class _IntakeSummary implements IntakeSummary {
  const _IntakeSummary({required  List<DaySummary> days, required this.totals, required this.loggedDays, required this.averagePerLoggedDay}): _days = days;
  

/// Every day in the range, including empty ones.
 final  List<DaySummary> _days;
/// Every day in the range, including empty ones.
@override List<DaySummary> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override final  Nutrients totals;
@override final  int loggedDays;
/// Averaged over days with at least one meal.
@override final  Nutrients averagePerLoggedDay;

/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntakeSummaryCopyWith<_IntakeSummary> get copyWith => __$IntakeSummaryCopyWithImpl<_IntakeSummary>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntakeSummary&&const DeepCollectionEquality().equals(other.days, _days)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.loggedDays, loggedDays) || other.loggedDays == loggedDays)&&(identical(other.averagePerLoggedDay, averagePerLoggedDay) || other.averagePerLoggedDay == averagePerLoggedDay));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_days),totals,loggedDays,averagePerLoggedDay);
}

@override
String toString() {
    return 'IntakeSummary(days: $days, totals: $totals, loggedDays: $loggedDays, averagePerLoggedDay: $averagePerLoggedDay)';
}


}

/// @nodoc
abstract mixin class _$IntakeSummaryCopyWith<$Res> implements $IntakeSummaryCopyWith<$Res> {
  factory _$IntakeSummaryCopyWith(_IntakeSummary value, $Res Function(_IntakeSummary) _then) = __$IntakeSummaryCopyWithImpl;
@override @useResult
$Res call({
 List<DaySummary> days, Nutrients totals, int loggedDays, Nutrients averagePerLoggedDay
});


@override $NutrientsCopyWith<$Res> get totals;@override $NutrientsCopyWith<$Res> get averagePerLoggedDay;

}
/// @nodoc
class __$IntakeSummaryCopyWithImpl<$Res>
    implements _$IntakeSummaryCopyWith<$Res> {
  __$IntakeSummaryCopyWithImpl(this._self, this._then);

  final _IntakeSummary _self;
  final $Res Function(_IntakeSummary) _then;

/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? days = null,Object? totals = null,Object? loggedDays = null,Object? averagePerLoggedDay = null,}) {
  return _then(_IntakeSummary(
days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<DaySummary>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,loggedDays: null == loggedDays ? _self.loggedDays : loggedDays // ignore: cast_nullable_to_non_nullable
as int,averagePerLoggedDay: null == averagePerLoggedDay ? _self.averagePerLoggedDay : averagePerLoggedDay // ignore: cast_nullable_to_non_nullable
as Nutrients,
  ));
}

/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get totals {
  
  return $NutrientsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of IntakeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get averagePerLoggedDay {
  
  return $NutrientsCopyWith<$Res>(_self.averagePerLoggedDay, (value) {
    return _then(_self.copyWith(averagePerLoggedDay: value));
  });
}
}

// dart format on
