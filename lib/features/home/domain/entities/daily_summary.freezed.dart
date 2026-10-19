// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailySummary {

 int get eatenCalories;/// `null` until the user sets up their profile.
 int? get dailyReference; int get proteinGrams; int get carbsGrams; int get fatGrams; List<MealRecord> get meals;
/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailySummaryCopyWith<DailySummary> get copyWith => _$DailySummaryCopyWithImpl<DailySummary>(this as DailySummary, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DailySummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySummary&&(identical(other.eatenCalories, _this.eatenCalories) || other.eatenCalories == _this.eatenCalories)&&(identical(other.dailyReference, _this.dailyReference) || other.dailyReference == _this.dailyReference)&&(identical(other.proteinGrams, _this.proteinGrams) || other.proteinGrams == _this.proteinGrams)&&(identical(other.carbsGrams, _this.carbsGrams) || other.carbsGrams == _this.carbsGrams)&&(identical(other.fatGrams, _this.fatGrams) || other.fatGrams == _this.fatGrams)&&const DeepCollectionEquality().equals(other.meals, _this.meals));
}


@override
int get hashCode {
  final _this = this as DailySummary;
  return Object.hash(runtimeType,_this.eatenCalories,_this.dailyReference,_this.proteinGrams,_this.carbsGrams,_this.fatGrams,const DeepCollectionEquality().hash(_this.meals));
}

@override
String toString() {
  final _this = this as DailySummary;
  return 'DailySummary(eatenCalories: ${_this.eatenCalories}, dailyReference: ${_this.dailyReference}, proteinGrams: ${_this.proteinGrams}, carbsGrams: ${_this.carbsGrams}, fatGrams: ${_this.fatGrams}, meals: ${_this.meals})';
}


}

/// @nodoc
abstract mixin class $DailySummaryCopyWith<$Res>  {
  factory $DailySummaryCopyWith(DailySummary value, $Res Function(DailySummary) _then) = _$DailySummaryCopyWithImpl;
@useResult
$Res call({
 int eatenCalories, int? dailyReference, int proteinGrams, int carbsGrams, int fatGrams, List<MealRecord> meals
});




}
/// @nodoc
class _$DailySummaryCopyWithImpl<$Res>
    implements $DailySummaryCopyWith<$Res> {
  _$DailySummaryCopyWithImpl(this._self, this._then);

  final DailySummary _self;
  final $Res Function(DailySummary) _then;

/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eatenCalories = null,Object? dailyReference = freezed,Object? proteinGrams = null,Object? carbsGrams = null,Object? fatGrams = null,Object? meals = null,}) {
  return _then(DailySummary(
eatenCalories: null == eatenCalories ? _self.eatenCalories : eatenCalories // ignore: cast_nullable_to_non_nullable
as int,dailyReference: freezed == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int?,proteinGrams: null == proteinGrams ? _self.proteinGrams : proteinGrams // ignore: cast_nullable_to_non_nullable
as int,carbsGrams: null == carbsGrams ? _self.carbsGrams : carbsGrams // ignore: cast_nullable_to_non_nullable
as int,fatGrams: null == fatGrams ? _self.fatGrams : fatGrams // ignore: cast_nullable_to_non_nullable
as int,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealRecord>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailySummary].
extension DailySummaryPatterns on DailySummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailySummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailySummary value)  $default,){
final _that = this;
switch (_that) {
case _DailySummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailySummary value)?  $default,){
final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eatenCalories,  int? dailyReference,  int proteinGrams,  int carbsGrams,  int fatGrams,  List<MealRecord> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
return $default(_that.eatenCalories,_that.dailyReference,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eatenCalories,  int? dailyReference,  int proteinGrams,  int carbsGrams,  int fatGrams,  List<MealRecord> meals)  $default,) {final _that = this;
switch (_that) {
case _DailySummary():
return $default(_that.eatenCalories,_that.dailyReference,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eatenCalories,  int? dailyReference,  int proteinGrams,  int carbsGrams,  int fatGrams,  List<MealRecord> meals)?  $default,) {final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
return $default(_that.eatenCalories,_that.dailyReference,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _DailySummary extends DailySummary {
  const _DailySummary({required this.eatenCalories, required this.dailyReference, required this.proteinGrams, required this.carbsGrams, required this.fatGrams, required  List<MealRecord> meals}): _meals = meals,super._();
  

@override final  int eatenCalories;
/// `null` until the user sets up their profile.
@override final  int? dailyReference;
@override final  int proteinGrams;
@override final  int carbsGrams;
@override final  int fatGrams;
 final  List<MealRecord> _meals;
@override List<MealRecord> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailySummaryCopyWith<_DailySummary> get copyWith => __$DailySummaryCopyWithImpl<_DailySummary>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailySummary&&(identical(other.eatenCalories, eatenCalories) || other.eatenCalories == eatenCalories)&&(identical(other.dailyReference, dailyReference) || other.dailyReference == dailyReference)&&(identical(other.proteinGrams, proteinGrams) || other.proteinGrams == proteinGrams)&&(identical(other.carbsGrams, carbsGrams) || other.carbsGrams == carbsGrams)&&(identical(other.fatGrams, fatGrams) || other.fatGrams == fatGrams)&&const DeepCollectionEquality().equals(other.meals, _meals));
}


@override
int get hashCode {
    return Object.hash(runtimeType,eatenCalories,dailyReference,proteinGrams,carbsGrams,fatGrams,const DeepCollectionEquality().hash(_meals));
}

@override
String toString() {
    return 'DailySummary(eatenCalories: $eatenCalories, dailyReference: $dailyReference, proteinGrams: $proteinGrams, carbsGrams: $carbsGrams, fatGrams: $fatGrams, meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$DailySummaryCopyWith<$Res> implements $DailySummaryCopyWith<$Res> {
  factory _$DailySummaryCopyWith(_DailySummary value, $Res Function(_DailySummary) _then) = __$DailySummaryCopyWithImpl;
@override @useResult
$Res call({
 int eatenCalories, int? dailyReference, int proteinGrams, int carbsGrams, int fatGrams, List<MealRecord> meals
});




}
/// @nodoc
class __$DailySummaryCopyWithImpl<$Res>
    implements _$DailySummaryCopyWith<$Res> {
  __$DailySummaryCopyWithImpl(this._self, this._then);

  final _DailySummary _self;
  final $Res Function(_DailySummary) _then;

/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eatenCalories = null,Object? dailyReference = freezed,Object? proteinGrams = null,Object? carbsGrams = null,Object? fatGrams = null,Object? meals = null,}) {
  return _then(_DailySummary(
eatenCalories: null == eatenCalories ? _self.eatenCalories : eatenCalories // ignore: cast_nullable_to_non_nullable
as int,dailyReference: freezed == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int?,proteinGrams: null == proteinGrams ? _self.proteinGrams : proteinGrams // ignore: cast_nullable_to_non_nullable
as int,carbsGrams: null == carbsGrams ? _self.carbsGrams : carbsGrams // ignore: cast_nullable_to_non_nullable
as int,fatGrams: null == fatGrams ? _self.fatGrams : fatGrams // ignore: cast_nullable_to_non_nullable
as int,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealRecord>,
  ));
}


}

// dart format on
