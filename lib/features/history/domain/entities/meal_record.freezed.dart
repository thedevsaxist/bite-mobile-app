// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealRecord {

 String get id; String get title; MealType get mealType; DateTime get eatenAt; int get totalCalories;
/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealRecordCopyWith<MealRecord> get copyWith => _$MealRecordCopyWithImpl<MealRecord>(this as MealRecord, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MealRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealRecord&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.mealType, _this.mealType) || other.mealType == _this.mealType)&&(identical(other.eatenAt, _this.eatenAt) || other.eatenAt == _this.eatenAt)&&(identical(other.totalCalories, _this.totalCalories) || other.totalCalories == _this.totalCalories));
}


@override
int get hashCode {
  final _this = this as MealRecord;
  return Object.hash(runtimeType,_this.id,_this.title,_this.mealType,_this.eatenAt,_this.totalCalories);
}

@override
String toString() {
  final _this = this as MealRecord;
  return 'MealRecord(id: ${_this.id}, title: ${_this.title}, mealType: ${_this.mealType}, eatenAt: ${_this.eatenAt}, totalCalories: ${_this.totalCalories})';
}


}

/// @nodoc
abstract mixin class $MealRecordCopyWith<$Res>  {
  factory $MealRecordCopyWith(MealRecord value, $Res Function(MealRecord) _then) = _$MealRecordCopyWithImpl;
@useResult
$Res call({
 String id, String title, MealType mealType, DateTime eatenAt, int totalCalories
});




}
/// @nodoc
class _$MealRecordCopyWithImpl<$Res>
    implements $MealRecordCopyWith<$Res> {
  _$MealRecordCopyWithImpl(this._self, this._then);

  final MealRecord _self;
  final $Res Function(MealRecord) _then;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? mealType = null,Object? eatenAt = null,Object? totalCalories = null,}) {
  return _then(MealRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,eatenAt: null == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MealRecord].
extension MealRecordPatterns on MealRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealRecord value)  $default,){
final _that = this;
switch (_that) {
case _MealRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealRecord value)?  $default,){
final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  MealType mealType,  DateTime eatenAt,  int totalCalories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
return $default(_that.id,_that.title,_that.mealType,_that.eatenAt,_that.totalCalories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  MealType mealType,  DateTime eatenAt,  int totalCalories)  $default,) {final _that = this;
switch (_that) {
case _MealRecord():
return $default(_that.id,_that.title,_that.mealType,_that.eatenAt,_that.totalCalories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  MealType mealType,  DateTime eatenAt,  int totalCalories)?  $default,) {final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
return $default(_that.id,_that.title,_that.mealType,_that.eatenAt,_that.totalCalories);case _:
  return null;

}
}

}

/// @nodoc


class _MealRecord implements MealRecord {
  const _MealRecord({required this.id, required this.title, required this.mealType, required this.eatenAt, required this.totalCalories});
  

@override final  String id;
@override final  String title;
@override final  MealType mealType;
@override final  DateTime eatenAt;
@override final  int totalCalories;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealRecordCopyWith<_MealRecord> get copyWith => __$MealRecordCopyWithImpl<_MealRecord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.eatenAt, eatenAt) || other.eatenAt == eatenAt)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,mealType,eatenAt,totalCalories);
}

@override
String toString() {
    return 'MealRecord(id: $id, title: $title, mealType: $mealType, eatenAt: $eatenAt, totalCalories: $totalCalories)';
}


}

/// @nodoc
abstract mixin class _$MealRecordCopyWith<$Res> implements $MealRecordCopyWith<$Res> {
  factory _$MealRecordCopyWith(_MealRecord value, $Res Function(_MealRecord) _then) = __$MealRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, MealType mealType, DateTime eatenAt, int totalCalories
});




}
/// @nodoc
class __$MealRecordCopyWithImpl<$Res>
    implements _$MealRecordCopyWith<$Res> {
  __$MealRecordCopyWithImpl(this._self, this._then);

  final _MealRecord _self;
  final $Res Function(_MealRecord) _then;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? mealType = null,Object? eatenAt = null,Object? totalCalories = null,}) {
  return _then(_MealRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,eatenAt: null == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DailyIntake {

 DateTime get date; int get calories;
/// Create a copy of DailyIntake
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyIntakeCopyWith<DailyIntake> get copyWith => _$DailyIntakeCopyWithImpl<DailyIntake>(this as DailyIntake, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DailyIntake;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyIntake&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.calories, _this.calories) || other.calories == _this.calories));
}


@override
int get hashCode {
  final _this = this as DailyIntake;
  return Object.hash(runtimeType,_this.date,_this.calories);
}

@override
String toString() {
  final _this = this as DailyIntake;
  return 'DailyIntake(date: ${_this.date}, calories: ${_this.calories})';
}


}

/// @nodoc
abstract mixin class $DailyIntakeCopyWith<$Res>  {
  factory $DailyIntakeCopyWith(DailyIntake value, $Res Function(DailyIntake) _then) = _$DailyIntakeCopyWithImpl;
@useResult
$Res call({
 DateTime date, int calories
});




}
/// @nodoc
class _$DailyIntakeCopyWithImpl<$Res>
    implements $DailyIntakeCopyWith<$Res> {
  _$DailyIntakeCopyWithImpl(this._self, this._then);

  final DailyIntake _self;
  final $Res Function(DailyIntake) _then;

/// Create a copy of DailyIntake
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? calories = null,}) {
  return _then(DailyIntake(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyIntake].
extension DailyIntakePatterns on DailyIntake {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyIntake value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyIntake() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyIntake value)  $default,){
final _that = this;
switch (_that) {
case _DailyIntake():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyIntake value)?  $default,){
final _that = this;
switch (_that) {
case _DailyIntake() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int calories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyIntake() when $default != null:
return $default(_that.date,_that.calories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int calories)  $default,) {final _that = this;
switch (_that) {
case _DailyIntake():
return $default(_that.date,_that.calories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int calories)?  $default,) {final _that = this;
switch (_that) {
case _DailyIntake() when $default != null:
return $default(_that.date,_that.calories);case _:
  return null;

}
}

}

/// @nodoc


class _DailyIntake implements DailyIntake {
  const _DailyIntake({required this.date, required this.calories});
  

@override final  DateTime date;
@override final  int calories;

/// Create a copy of DailyIntake
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyIntakeCopyWith<_DailyIntake> get copyWith => __$DailyIntakeCopyWithImpl<_DailyIntake>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyIntake&&(identical(other.date, date) || other.date == date)&&(identical(other.calories, calories) || other.calories == calories));
}


@override
int get hashCode {
    return Object.hash(runtimeType,date,calories);
}

@override
String toString() {
    return 'DailyIntake(date: $date, calories: $calories)';
}


}

/// @nodoc
abstract mixin class _$DailyIntakeCopyWith<$Res> implements $DailyIntakeCopyWith<$Res> {
  factory _$DailyIntakeCopyWith(_DailyIntake value, $Res Function(_DailyIntake) _then) = __$DailyIntakeCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int calories
});




}
/// @nodoc
class __$DailyIntakeCopyWithImpl<$Res>
    implements _$DailyIntakeCopyWith<$Res> {
  __$DailyIntakeCopyWithImpl(this._self, this._then);

  final _DailyIntake _self;
  final $Res Function(_DailyIntake) _then;

/// Create a copy of DailyIntake
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? calories = null,}) {
  return _then(_DailyIntake(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
