// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodAnalysis {

 String get id; List<MealItem> get items; DateTime get createdAt;/// A signed link to the stored photo.
 String? get imageUrl;/// The meal saved from it: set straight away when auto-save is on.
 String? get mealId; bool get isDisputed;
/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisCopyWith<FoodAnalysis> get copyWith => _$FoodAnalysisCopyWithImpl<FoodAnalysis>(this as FoodAnalysis, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FoodAnalysis;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysis&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.mealId, _this.mealId) || other.mealId == _this.mealId)&&(identical(other.isDisputed, _this.isDisputed) || other.isDisputed == _this.isDisputed));
}


@override
int get hashCode {
  final _this = this as FoodAnalysis;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.items),_this.createdAt,_this.imageUrl,_this.mealId,_this.isDisputed);
}

@override
String toString() {
  final _this = this as FoodAnalysis;
  return 'FoodAnalysis(id: ${_this.id}, items: ${_this.items}, createdAt: ${_this.createdAt}, imageUrl: ${_this.imageUrl}, mealId: ${_this.mealId}, isDisputed: ${_this.isDisputed})';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisCopyWith<$Res>  {
  factory $FoodAnalysisCopyWith(FoodAnalysis value, $Res Function(FoodAnalysis) _then) = _$FoodAnalysisCopyWithImpl;
@useResult
$Res call({
 String id, List<MealItem> items, DateTime createdAt, String? imageUrl, String? mealId, bool isDisputed
});




}
/// @nodoc
class _$FoodAnalysisCopyWithImpl<$Res>
    implements $FoodAnalysisCopyWith<$Res> {
  _$FoodAnalysisCopyWithImpl(this._self, this._then);

  final FoodAnalysis _self;
  final $Res Function(FoodAnalysis) _then;

/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? items = null,Object? createdAt = null,Object? imageUrl = freezed,Object? mealId = freezed,Object? isDisputed = null,}) {
  return _then(FoodAnalysis(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodAnalysis].
extension FoodAnalysisPatterns on FoodAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<MealItem> items,  DateTime createdAt,  String? imageUrl,  String? mealId,  bool isDisputed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
return $default(_that.id,_that.items,_that.createdAt,_that.imageUrl,_that.mealId,_that.isDisputed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<MealItem> items,  DateTime createdAt,  String? imageUrl,  String? mealId,  bool isDisputed)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysis():
return $default(_that.id,_that.items,_that.createdAt,_that.imageUrl,_that.mealId,_that.isDisputed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<MealItem> items,  DateTime createdAt,  String? imageUrl,  String? mealId,  bool isDisputed)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
return $default(_that.id,_that.items,_that.createdAt,_that.imageUrl,_that.mealId,_that.isDisputed);case _:
  return null;

}
}

}

/// @nodoc


class _FoodAnalysis implements FoodAnalysis {
  const _FoodAnalysis({required this.id, required  List<MealItem> items, required this.createdAt, this.imageUrl, this.mealId, this.isDisputed = false}): _items = items;
  

@override final  String id;
 final  List<MealItem> _items;
@override List<MealItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  DateTime createdAt;
/// A signed link to the stored photo.
@override final  String? imageUrl;
/// The meal saved from it: set straight away when auto-save is on.
@override final  String? mealId;
@override@JsonKey() final  bool isDisputed;

/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisCopyWith<_FoodAnalysis> get copyWith => __$FoodAnalysisCopyWithImpl<_FoodAnalysis>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysis&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.mealId, mealId) || other.mealId == mealId)&&(identical(other.isDisputed, isDisputed) || other.isDisputed == isDisputed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_items),createdAt,imageUrl,mealId,isDisputed);
}

@override
String toString() {
    return 'FoodAnalysis(id: $id, items: $items, createdAt: $createdAt, imageUrl: $imageUrl, mealId: $mealId, isDisputed: $isDisputed)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisCopyWith<$Res> implements $FoodAnalysisCopyWith<$Res> {
  factory _$FoodAnalysisCopyWith(_FoodAnalysis value, $Res Function(_FoodAnalysis) _then) = __$FoodAnalysisCopyWithImpl;
@override @useResult
$Res call({
 String id, List<MealItem> items, DateTime createdAt, String? imageUrl, String? mealId, bool isDisputed
});




}
/// @nodoc
class __$FoodAnalysisCopyWithImpl<$Res>
    implements _$FoodAnalysisCopyWith<$Res> {
  __$FoodAnalysisCopyWithImpl(this._self, this._then);

  final _FoodAnalysis _self;
  final $Res Function(_FoodAnalysis) _then;

/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? items = null,Object? createdAt = null,Object? imageUrl = freezed,Object? mealId = freezed,Object? isDisputed = null,}) {
  return _then(_FoodAnalysis(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
