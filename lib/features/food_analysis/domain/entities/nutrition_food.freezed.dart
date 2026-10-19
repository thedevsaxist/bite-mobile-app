// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NutritionFood {

 String get id; String get key; String get name; double get servingSize; Nutrients get perServingSize;/// Grams in one typical serving, e.g. jollof rice: 300 ("1 plate").
 double get typicalServingSize; String get typicalServingLabel;
/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionFoodCopyWith<NutritionFood> get copyWith => _$NutritionFoodCopyWithImpl<NutritionFood>(this as NutritionFood, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NutritionFood;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionFood&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.servingSize, _this.servingSize) || other.servingSize == _this.servingSize)&&(identical(other.perServingSize, _this.perServingSize) || other.perServingSize == _this.perServingSize)&&(identical(other.typicalServingSize, _this.typicalServingSize) || other.typicalServingSize == _this.typicalServingSize)&&(identical(other.typicalServingLabel, _this.typicalServingLabel) || other.typicalServingLabel == _this.typicalServingLabel));
}


@override
int get hashCode {
  final _this = this as NutritionFood;
  return Object.hash(runtimeType,_this.id,_this.key,_this.name,_this.servingSize,_this.perServingSize,_this.typicalServingSize,_this.typicalServingLabel);
}

@override
String toString() {
  final _this = this as NutritionFood;
  return 'NutritionFood(id: ${_this.id}, key: ${_this.key}, name: ${_this.name}, servingSize: ${_this.servingSize}, perServingSize: ${_this.perServingSize}, typicalServingSize: ${_this.typicalServingSize}, typicalServingLabel: ${_this.typicalServingLabel})';
}


}

/// @nodoc
abstract mixin class $NutritionFoodCopyWith<$Res>  {
  factory $NutritionFoodCopyWith(NutritionFood value, $Res Function(NutritionFood) _then) = _$NutritionFoodCopyWithImpl;
@useResult
$Res call({
 String id, String key, String name, double servingSize, Nutrients perServingSize, double typicalServingSize, String typicalServingLabel
});


$NutrientsCopyWith<$Res> get perServingSize;

}
/// @nodoc
class _$NutritionFoodCopyWithImpl<$Res>
    implements $NutritionFoodCopyWith<$Res> {
  _$NutritionFoodCopyWithImpl(this._self, this._then);

  final NutritionFood _self;
  final $Res Function(NutritionFood) _then;

/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? name = null,Object? servingSize = null,Object? perServingSize = null,Object? typicalServingSize = null,Object? typicalServingLabel = null,}) {
  return _then(NutritionFood(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,servingSize: null == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as double,perServingSize: null == perServingSize ? _self.perServingSize : perServingSize // ignore: cast_nullable_to_non_nullable
as Nutrients,typicalServingSize: null == typicalServingSize ? _self.typicalServingSize : typicalServingSize // ignore: cast_nullable_to_non_nullable
as double,typicalServingLabel: null == typicalServingLabel ? _self.typicalServingLabel : typicalServingLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get perServingSize {
  
  return $NutrientsCopyWith<$Res>(_self.perServingSize, (value) {
    return _then(_self.copyWith(perServingSize: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionFood].
extension NutritionFoodPatterns on NutritionFood {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionFood value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionFood() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionFood value)  $default,){
final _that = this;
switch (_that) {
case _NutritionFood():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionFood value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionFood() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String key,  String name,  double servingSize,  Nutrients perServingSize,  double typicalServingSize,  String typicalServingLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionFood() when $default != null:
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.perServingSize,_that.typicalServingSize,_that.typicalServingLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String key,  String name,  double servingSize,  Nutrients perServingSize,  double typicalServingSize,  String typicalServingLabel)  $default,) {final _that = this;
switch (_that) {
case _NutritionFood():
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.perServingSize,_that.typicalServingSize,_that.typicalServingLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String key,  String name,  double servingSize,  Nutrients perServingSize,  double typicalServingSize,  String typicalServingLabel)?  $default,) {final _that = this;
switch (_that) {
case _NutritionFood() when $default != null:
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.perServingSize,_that.typicalServingSize,_that.typicalServingLabel);case _:
  return null;

}
}

}

/// @nodoc


class _NutritionFood extends NutritionFood {
  const _NutritionFood({required this.id, required this.key, required this.name, required this.servingSize, required this.perServingSize, required this.typicalServingSize, required this.typicalServingLabel}): super._();
  

@override final  String id;
@override final  String key;
@override final  String name;
@override final  double servingSize;
@override final  Nutrients perServingSize;
/// Grams in one typical serving, e.g. jollof rice: 300 ("1 plate").
@override final  double typicalServingSize;
@override final  String typicalServingLabel;

/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionFoodCopyWith<_NutritionFood> get copyWith => __$NutritionFoodCopyWithImpl<_NutritionFood>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionFood&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.perServingSize, perServingSize) || other.perServingSize == perServingSize)&&(identical(other.typicalServingSize, typicalServingSize) || other.typicalServingSize == typicalServingSize)&&(identical(other.typicalServingLabel, typicalServingLabel) || other.typicalServingLabel == typicalServingLabel));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,key,name,servingSize,perServingSize,typicalServingSize,typicalServingLabel);
}

@override
String toString() {
    return 'NutritionFood(id: $id, key: $key, name: $name, servingSize: $servingSize, perServingSize: $perServingSize, typicalServingSize: $typicalServingSize, typicalServingLabel: $typicalServingLabel)';
}


}

/// @nodoc
abstract mixin class _$NutritionFoodCopyWith<$Res> implements $NutritionFoodCopyWith<$Res> {
  factory _$NutritionFoodCopyWith(_NutritionFood value, $Res Function(_NutritionFood) _then) = __$NutritionFoodCopyWithImpl;
@override @useResult
$Res call({
 String id, String key, String name, double servingSize, Nutrients perServingSize, double typicalServingSize, String typicalServingLabel
});


@override $NutrientsCopyWith<$Res> get perServingSize;

}
/// @nodoc
class __$NutritionFoodCopyWithImpl<$Res>
    implements _$NutritionFoodCopyWith<$Res> {
  __$NutritionFoodCopyWithImpl(this._self, this._then);

  final _NutritionFood _self;
  final $Res Function(_NutritionFood) _then;

/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? name = null,Object? servingSize = null,Object? perServingSize = null,Object? typicalServingSize = null,Object? typicalServingLabel = null,}) {
  return _then(_NutritionFood(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,servingSize: null == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as double,perServingSize: null == perServingSize ? _self.perServingSize : perServingSize // ignore: cast_nullable_to_non_nullable
as Nutrients,typicalServingSize: null == typicalServingSize ? _self.typicalServingSize : typicalServingSize // ignore: cast_nullable_to_non_nullable
as double,typicalServingLabel: null == typicalServingLabel ? _self.typicalServingLabel : typicalServingLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of NutritionFood
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get perServingSize {
  
  return $NutrientsCopyWith<$Res>(_self.perServingSize, (value) {
    return _then(_self.copyWith(perServingSize: value));
  });
}
}

// dart format on
