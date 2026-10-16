// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealDayGroup {

 String get label; int get totalCalories; List<MealRecord> get meals;
/// Create a copy of MealDayGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDayGroupCopyWith<MealDayGroup> get copyWith => _$MealDayGroupCopyWithImpl<MealDayGroup>(this as MealDayGroup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MealDayGroup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDayGroup&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.totalCalories, _this.totalCalories) || other.totalCalories == _this.totalCalories)&&const DeepCollectionEquality().equals(other.meals, _this.meals));
}


@override
int get hashCode {
  final _this = this as MealDayGroup;
  return Object.hash(runtimeType,_this.label,_this.totalCalories,const DeepCollectionEquality().hash(_this.meals));
}

@override
String toString() {
  final _this = this as MealDayGroup;
  return 'MealDayGroup(label: ${_this.label}, totalCalories: ${_this.totalCalories}, meals: ${_this.meals})';
}


}

/// @nodoc
abstract mixin class $MealDayGroupCopyWith<$Res>  {
  factory $MealDayGroupCopyWith(MealDayGroup value, $Res Function(MealDayGroup) _then) = _$MealDayGroupCopyWithImpl;
@useResult
$Res call({
 String label, int totalCalories, List<MealRecord> meals
});




}
/// @nodoc
class _$MealDayGroupCopyWithImpl<$Res>
    implements $MealDayGroupCopyWith<$Res> {
  _$MealDayGroupCopyWithImpl(this._self, this._then);

  final MealDayGroup _self;
  final $Res Function(MealDayGroup) _then;

/// Create a copy of MealDayGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? totalCalories = null,Object? meals = null,}) {
  return _then(MealDayGroup(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealRecord>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealDayGroup].
extension MealDayGroupPatterns on MealDayGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDayGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDayGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDayGroup value)  $default,){
final _that = this;
switch (_that) {
case _MealDayGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDayGroup value)?  $default,){
final _that = this;
switch (_that) {
case _MealDayGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  int totalCalories,  List<MealRecord> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDayGroup() when $default != null:
return $default(_that.label,_that.totalCalories,_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  int totalCalories,  List<MealRecord> meals)  $default,) {final _that = this;
switch (_that) {
case _MealDayGroup():
return $default(_that.label,_that.totalCalories,_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  int totalCalories,  List<MealRecord> meals)?  $default,) {final _that = this;
switch (_that) {
case _MealDayGroup() when $default != null:
return $default(_that.label,_that.totalCalories,_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _MealDayGroup implements MealDayGroup {
  const _MealDayGroup({required this.label, required this.totalCalories, required  List<MealRecord> meals}): _meals = meals;
  

@override final  String label;
@override final  int totalCalories;
 final  List<MealRecord> _meals;
@override List<MealRecord> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of MealDayGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDayGroupCopyWith<_MealDayGroup> get copyWith => __$MealDayGroupCopyWithImpl<_MealDayGroup>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDayGroup&&(identical(other.label, label) || other.label == label)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&const DeepCollectionEquality().equals(other.meals, _meals));
}


@override
int get hashCode {
    return Object.hash(runtimeType,label,totalCalories,const DeepCollectionEquality().hash(_meals));
}

@override
String toString() {
    return 'MealDayGroup(label: $label, totalCalories: $totalCalories, meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealDayGroupCopyWith<$Res> implements $MealDayGroupCopyWith<$Res> {
  factory _$MealDayGroupCopyWith(_MealDayGroup value, $Res Function(_MealDayGroup) _then) = __$MealDayGroupCopyWithImpl;
@override @useResult
$Res call({
 String label, int totalCalories, List<MealRecord> meals
});




}
/// @nodoc
class __$MealDayGroupCopyWithImpl<$Res>
    implements _$MealDayGroupCopyWith<$Res> {
  __$MealDayGroupCopyWithImpl(this._self, this._then);

  final _MealDayGroup _self;
  final $Res Function(_MealDayGroup) _then;

/// Create a copy of MealDayGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? totalCalories = null,Object? meals = null,}) {
  return _then(_MealDayGroup(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealRecord>,
  ));
}


}

/// @nodoc
mixin _$HistoryState {

 HistoryPeriod get period; String get rangeLabel; int get dailyAverage; int get dailyReference; List<DailyIntake> get days; List<MealDayGroup> get groups;
/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateCopyWith<HistoryState> get copyWith => _$HistoryStateCopyWithImpl<HistoryState>(this as HistoryState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HistoryState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.rangeLabel, _this.rangeLabel) || other.rangeLabel == _this.rangeLabel)&&(identical(other.dailyAverage, _this.dailyAverage) || other.dailyAverage == _this.dailyAverage)&&(identical(other.dailyReference, _this.dailyReference) || other.dailyReference == _this.dailyReference)&&const DeepCollectionEquality().equals(other.days, _this.days)&&const DeepCollectionEquality().equals(other.groups, _this.groups));
}


@override
int get hashCode {
  final _this = this as HistoryState;
  return Object.hash(runtimeType,_this.period,_this.rangeLabel,_this.dailyAverage,_this.dailyReference,const DeepCollectionEquality().hash(_this.days),const DeepCollectionEquality().hash(_this.groups));
}

@override
String toString() {
  final _this = this as HistoryState;
  return 'HistoryState(period: ${_this.period}, rangeLabel: ${_this.rangeLabel}, dailyAverage: ${_this.dailyAverage}, dailyReference: ${_this.dailyReference}, days: ${_this.days}, groups: ${_this.groups})';
}


}

/// @nodoc
abstract mixin class $HistoryStateCopyWith<$Res>  {
  factory $HistoryStateCopyWith(HistoryState value, $Res Function(HistoryState) _then) = _$HistoryStateCopyWithImpl;
@useResult
$Res call({
 HistoryPeriod period, String rangeLabel, int dailyAverage, int dailyReference, List<DailyIntake> days, List<MealDayGroup> groups
});




}
/// @nodoc
class _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._self, this._then);

  final HistoryState _self;
  final $Res Function(HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? rangeLabel = null,Object? dailyAverage = null,Object? dailyReference = null,Object? days = null,Object? groups = null,}) {
  return _then(HistoryState(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as HistoryPeriod,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,dailyAverage: null == dailyAverage ? _self.dailyAverage : dailyAverage // ignore: cast_nullable_to_non_nullable
as int,dailyReference: null == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<DailyIntake>,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<MealDayGroup>,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryState value)  $default,){
final _that = this;
switch (_that) {
case _HistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HistoryPeriod period,  String rangeLabel,  int dailyAverage,  int dailyReference,  List<DailyIntake> days,  List<MealDayGroup> groups)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
return $default(_that.period,_that.rangeLabel,_that.dailyAverage,_that.dailyReference,_that.days,_that.groups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HistoryPeriod period,  String rangeLabel,  int dailyAverage,  int dailyReference,  List<DailyIntake> days,  List<MealDayGroup> groups)  $default,) {final _that = this;
switch (_that) {
case _HistoryState():
return $default(_that.period,_that.rangeLabel,_that.dailyAverage,_that.dailyReference,_that.days,_that.groups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HistoryPeriod period,  String rangeLabel,  int dailyAverage,  int dailyReference,  List<DailyIntake> days,  List<MealDayGroup> groups)?  $default,) {final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
return $default(_that.period,_that.rangeLabel,_that.dailyAverage,_that.dailyReference,_that.days,_that.groups);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryState implements HistoryState {
  const _HistoryState({required this.period, required this.rangeLabel, required this.dailyAverage, required this.dailyReference, required  List<DailyIntake> days, required  List<MealDayGroup> groups}): _days = days,_groups = groups;
  

@override final  HistoryPeriod period;
@override final  String rangeLabel;
@override final  int dailyAverage;
@override final  int dailyReference;
 final  List<DailyIntake> _days;
@override List<DailyIntake> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

 final  List<MealDayGroup> _groups;
@override List<MealDayGroup> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}


/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryStateCopyWith<_HistoryState> get copyWith => __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryState&&(identical(other.period, period) || other.period == period)&&(identical(other.rangeLabel, rangeLabel) || other.rangeLabel == rangeLabel)&&(identical(other.dailyAverage, dailyAverage) || other.dailyAverage == dailyAverage)&&(identical(other.dailyReference, dailyReference) || other.dailyReference == dailyReference)&&const DeepCollectionEquality().equals(other.days, _days)&&const DeepCollectionEquality().equals(other.groups, _groups));
}


@override
int get hashCode {
    return Object.hash(runtimeType,period,rangeLabel,dailyAverage,dailyReference,const DeepCollectionEquality().hash(_days),const DeepCollectionEquality().hash(_groups));
}

@override
String toString() {
    return 'HistoryState(period: $period, rangeLabel: $rangeLabel, dailyAverage: $dailyAverage, dailyReference: $dailyReference, days: $days, groups: $groups)';
}


}

/// @nodoc
abstract mixin class _$HistoryStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(_HistoryState value, $Res Function(_HistoryState) _then) = __$HistoryStateCopyWithImpl;
@override @useResult
$Res call({
 HistoryPeriod period, String rangeLabel, int dailyAverage, int dailyReference, List<DailyIntake> days, List<MealDayGroup> groups
});




}
/// @nodoc
class __$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(this._self, this._then);

  final _HistoryState _self;
  final $Res Function(_HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? rangeLabel = null,Object? dailyAverage = null,Object? dailyReference = null,Object? days = null,Object? groups = null,}) {
  return _then(_HistoryState(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as HistoryPeriod,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,dailyAverage: null == dailyAverage ? _self.dailyAverage : dailyAverage // ignore: cast_nullable_to_non_nullable
as int,dailyReference: null == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<DailyIntake>,groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<MealDayGroup>,
  ));
}


}

// dart format on
