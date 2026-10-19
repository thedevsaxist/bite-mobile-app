// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NutrientsDto {

 double get calories; double get protein; double get carbohydrates; double get fat;
/// Create a copy of NutrientsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<NutrientsDto> get copyWith => _$NutrientsDtoCopyWithImpl<NutrientsDto>(this as NutrientsDto, _$identity);

  /// Serializes this NutrientsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NutrientsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientsDto&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.protein, _this.protein) || other.protein == _this.protein)&&(identical(other.carbohydrates, _this.carbohydrates) || other.carbohydrates == _this.carbohydrates)&&(identical(other.fat, _this.fat) || other.fat == _this.fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NutrientsDto;
  return Object.hash(runtimeType,_this.calories,_this.protein,_this.carbohydrates,_this.fat);
}

@override
String toString() {
  final _this = this as NutrientsDto;
  return 'NutrientsDto(calories: ${_this.calories}, protein: ${_this.protein}, carbohydrates: ${_this.carbohydrates}, fat: ${_this.fat})';
}


}

/// @nodoc
abstract mixin class $NutrientsDtoCopyWith<$Res>  {
  factory $NutrientsDtoCopyWith(NutrientsDto value, $Res Function(NutrientsDto) _then) = _$NutrientsDtoCopyWithImpl;
@useResult
$Res call({
 double calories, double protein, double carbohydrates, double fat
});




}
/// @nodoc
class _$NutrientsDtoCopyWithImpl<$Res>
    implements $NutrientsDtoCopyWith<$Res> {
  _$NutrientsDtoCopyWithImpl(this._self, this._then);

  final NutrientsDto _self;
  final $Res Function(NutrientsDto) _then;

/// Create a copy of NutrientsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,}) {
  return _then(NutrientsDto(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientsDto].
extension NutrientsDtoPatterns on NutrientsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientsDto value)  $default,){
final _that = this;
switch (_that) {
case _NutrientsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientsDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double calories,  double protein,  double carbohydrates,  double fat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientsDto() when $default != null:
return $default(_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double calories,  double protein,  double carbohydrates,  double fat)  $default,) {final _that = this;
switch (_that) {
case _NutrientsDto():
return $default(_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double calories,  double protein,  double carbohydrates,  double fat)?  $default,) {final _that = this;
switch (_that) {
case _NutrientsDto() when $default != null:
return $default(_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientsDto extends NutrientsDto {
  const _NutrientsDto({required this.calories, required this.protein, required this.carbohydrates, required this.fat}): super._();
  factory _NutrientsDto.fromJson(Map<String, dynamic> json) => _$NutrientsDtoFromJson(json);

@override final  double calories;
@override final  double protein;
@override final  double carbohydrates;
@override final  double fat;

/// Create a copy of NutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientsDtoCopyWith<_NutrientsDto> get copyWith => __$NutrientsDtoCopyWithImpl<_NutrientsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientsDto&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,calories,protein,carbohydrates,fat);
}

@override
String toString() {
    return 'NutrientsDto(calories: $calories, protein: $protein, carbohydrates: $carbohydrates, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$NutrientsDtoCopyWith<$Res> implements $NutrientsDtoCopyWith<$Res> {
  factory _$NutrientsDtoCopyWith(_NutrientsDto value, $Res Function(_NutrientsDto) _then) = __$NutrientsDtoCopyWithImpl;
@override @useResult
$Res call({
 double calories, double protein, double carbohydrates, double fat
});




}
/// @nodoc
class __$NutrientsDtoCopyWithImpl<$Res>
    implements _$NutrientsDtoCopyWith<$Res> {
  __$NutrientsDtoCopyWithImpl(this._self, this._then);

  final _NutrientsDto _self;
  final $Res Function(_NutrientsDto) _then;

/// Create a copy of NutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,}) {
  return _then(_NutrientsDto(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$FoodReferenceDto {

 String get id; String get key; String get name;
/// Create a copy of FoodReferenceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodReferenceDtoCopyWith<FoodReferenceDto> get copyWith => _$FoodReferenceDtoCopyWithImpl<FoodReferenceDto>(this as FoodReferenceDto, _$identity);

  /// Serializes this FoodReferenceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FoodReferenceDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodReferenceDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FoodReferenceDto;
  return Object.hash(runtimeType,_this.id,_this.key,_this.name);
}

@override
String toString() {
  final _this = this as FoodReferenceDto;
  return 'FoodReferenceDto(id: ${_this.id}, key: ${_this.key}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $FoodReferenceDtoCopyWith<$Res>  {
  factory $FoodReferenceDtoCopyWith(FoodReferenceDto value, $Res Function(FoodReferenceDto) _then) = _$FoodReferenceDtoCopyWithImpl;
@useResult
$Res call({
 String id, String key, String name
});




}
/// @nodoc
class _$FoodReferenceDtoCopyWithImpl<$Res>
    implements $FoodReferenceDtoCopyWith<$Res> {
  _$FoodReferenceDtoCopyWithImpl(this._self, this._then);

  final FoodReferenceDto _self;
  final $Res Function(FoodReferenceDto) _then;

/// Create a copy of FoodReferenceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? name = null,}) {
  return _then(FoodReferenceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodReferenceDto].
extension FoodReferenceDtoPatterns on FoodReferenceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodReferenceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodReferenceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodReferenceDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodReferenceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodReferenceDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodReferenceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String key,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodReferenceDto() when $default != null:
return $default(_that.id,_that.key,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String key,  String name)  $default,) {final _that = this;
switch (_that) {
case _FoodReferenceDto():
return $default(_that.id,_that.key,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String key,  String name)?  $default,) {final _that = this;
switch (_that) {
case _FoodReferenceDto() when $default != null:
return $default(_that.id,_that.key,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodReferenceDto extends FoodReferenceDto {
  const _FoodReferenceDto({required this.id, required this.key, required this.name}): super._();
  factory _FoodReferenceDto.fromJson(Map<String, dynamic> json) => _$FoodReferenceDtoFromJson(json);

@override final  String id;
@override final  String key;
@override final  String name;

/// Create a copy of FoodReferenceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodReferenceDtoCopyWith<_FoodReferenceDto> get copyWith => __$FoodReferenceDtoCopyWithImpl<_FoodReferenceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodReferenceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodReferenceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,key,name);
}

@override
String toString() {
    return 'FoodReferenceDto(id: $id, key: $key, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FoodReferenceDtoCopyWith<$Res> implements $FoodReferenceDtoCopyWith<$Res> {
  factory _$FoodReferenceDtoCopyWith(_FoodReferenceDto value, $Res Function(_FoodReferenceDto) _then) = __$FoodReferenceDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String key, String name
});




}
/// @nodoc
class __$FoodReferenceDtoCopyWithImpl<$Res>
    implements _$FoodReferenceDtoCopyWith<$Res> {
  __$FoodReferenceDtoCopyWithImpl(this._self, this._then);

  final _FoodReferenceDto _self;
  final $Res Function(_FoodReferenceDto) _then;

/// Create a copy of FoodReferenceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? name = null,}) {
  return _then(_FoodReferenceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PortionDto {

 String? get description; double? get quantity; String? get unit;
/// Create a copy of PortionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortionDtoCopyWith<PortionDto> get copyWith => _$PortionDtoCopyWithImpl<PortionDto>(this as PortionDto, _$identity);

  /// Serializes this PortionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PortionDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortionDto&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PortionDto;
  return Object.hash(runtimeType,_this.description,_this.quantity,_this.unit);
}

@override
String toString() {
  final _this = this as PortionDto;
  return 'PortionDto(description: ${_this.description}, quantity: ${_this.quantity}, unit: ${_this.unit})';
}


}

/// @nodoc
abstract mixin class $PortionDtoCopyWith<$Res>  {
  factory $PortionDtoCopyWith(PortionDto value, $Res Function(PortionDto) _then) = _$PortionDtoCopyWithImpl;
@useResult
$Res call({
 String? description, double? quantity, String? unit
});




}
/// @nodoc
class _$PortionDtoCopyWithImpl<$Res>
    implements $PortionDtoCopyWith<$Res> {
  _$PortionDtoCopyWithImpl(this._self, this._then);

  final PortionDto _self;
  final $Res Function(PortionDto) _then;

/// Create a copy of PortionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? quantity = freezed,Object? unit = freezed,}) {
  return _then(PortionDto(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PortionDto].
extension PortionDtoPatterns on PortionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortionDto value)  $default,){
final _that = this;
switch (_that) {
case _PortionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PortionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  double? quantity,  String? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortionDto() when $default != null:
return $default(_that.description,_that.quantity,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  double? quantity,  String? unit)  $default,) {final _that = this;
switch (_that) {
case _PortionDto():
return $default(_that.description,_that.quantity,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  double? quantity,  String? unit)?  $default,) {final _that = this;
switch (_that) {
case _PortionDto() when $default != null:
return $default(_that.description,_that.quantity,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortionDto implements PortionDto {
  const _PortionDto({this.description, this.quantity, this.unit});
  factory _PortionDto.fromJson(Map<String, dynamic> json) => _$PortionDtoFromJson(json);

@override final  String? description;
@override final  double? quantity;
@override final  String? unit;

/// Create a copy of PortionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortionDtoCopyWith<_PortionDto> get copyWith => __$PortionDtoCopyWithImpl<_PortionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortionDto&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,description,quantity,unit);
}

@override
String toString() {
    return 'PortionDto(description: $description, quantity: $quantity, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$PortionDtoCopyWith<$Res> implements $PortionDtoCopyWith<$Res> {
  factory _$PortionDtoCopyWith(_PortionDto value, $Res Function(_PortionDto) _then) = __$PortionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? description, double? quantity, String? unit
});




}
/// @nodoc
class __$PortionDtoCopyWithImpl<$Res>
    implements _$PortionDtoCopyWith<$Res> {
  __$PortionDtoCopyWithImpl(this._self, this._then);

  final _PortionDto _self;
  final $Res Function(_PortionDto) _then;

/// Create a copy of PortionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? quantity = freezed,Object? unit = freezed,}) {
  return _then(_PortionDto(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MealItemDto {

 String get id; String get name; String? get recognisedItemId; FoodReferenceDto? get nutritionReference; PortionDto get portion; NutrientsDto? get nutrients; bool get wasModified;
/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealItemDtoCopyWith<MealItemDto> get copyWith => _$MealItemDtoCopyWithImpl<MealItemDto>(this as MealItemDto, _$identity);

  /// Serializes this MealItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealItemDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealItemDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.recognisedItemId, _this.recognisedItemId) || other.recognisedItemId == _this.recognisedItemId)&&(identical(other.nutritionReference, _this.nutritionReference) || other.nutritionReference == _this.nutritionReference)&&(identical(other.portion, _this.portion) || other.portion == _this.portion)&&(identical(other.nutrients, _this.nutrients) || other.nutrients == _this.nutrients)&&(identical(other.wasModified, _this.wasModified) || other.wasModified == _this.wasModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealItemDto;
  return Object.hash(runtimeType,_this.id,_this.name,_this.recognisedItemId,_this.nutritionReference,_this.portion,_this.nutrients,_this.wasModified);
}

@override
String toString() {
  final _this = this as MealItemDto;
  return 'MealItemDto(id: ${_this.id}, name: ${_this.name}, recognisedItemId: ${_this.recognisedItemId}, nutritionReference: ${_this.nutritionReference}, portion: ${_this.portion}, nutrients: ${_this.nutrients}, wasModified: ${_this.wasModified})';
}


}

/// @nodoc
abstract mixin class $MealItemDtoCopyWith<$Res>  {
  factory $MealItemDtoCopyWith(MealItemDto value, $Res Function(MealItemDto) _then) = _$MealItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? recognisedItemId, FoodReferenceDto? nutritionReference, PortionDto portion, NutrientsDto? nutrients, bool wasModified
});


$FoodReferenceDtoCopyWith<$Res>? get nutritionReference;$PortionDtoCopyWith<$Res> get portion;$NutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class _$MealItemDtoCopyWithImpl<$Res>
    implements $MealItemDtoCopyWith<$Res> {
  _$MealItemDtoCopyWithImpl(this._self, this._then);

  final MealItemDto _self;
  final $Res Function(MealItemDto) _then;

/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? recognisedItemId = freezed,Object? nutritionReference = freezed,Object? portion = null,Object? nutrients = freezed,Object? wasModified = null,}) {
  return _then(MealItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,nutritionReference: freezed == nutritionReference ? _self.nutritionReference : nutritionReference // ignore: cast_nullable_to_non_nullable
as FoodReferenceDto?,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as PortionDto,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsDto?,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodReferenceDtoCopyWith<$Res>? get nutritionReference {
    if (_self.nutritionReference == null) {
    return null;
  }

  return $FoodReferenceDtoCopyWith<$Res>(_self.nutritionReference!, (value) {
    return _then(_self.copyWith(nutritionReference: value));
  });
}/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortionDtoCopyWith<$Res> get portion {
  
  return $PortionDtoCopyWith<$Res>(_self.portion, (value) {
    return _then(_self.copyWith(portion: value));
  });
}/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $NutrientsDtoCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealItemDto].
extension MealItemDtoPatterns on MealItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealItemDto value)  $default,){
final _that = this;
switch (_that) {
case _MealItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _MealItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? recognisedItemId,  FoodReferenceDto? nutritionReference,  PortionDto portion,  NutrientsDto? nutrients,  bool wasModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealItemDto() when $default != null:
return $default(_that.id,_that.name,_that.recognisedItemId,_that.nutritionReference,_that.portion,_that.nutrients,_that.wasModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? recognisedItemId,  FoodReferenceDto? nutritionReference,  PortionDto portion,  NutrientsDto? nutrients,  bool wasModified)  $default,) {final _that = this;
switch (_that) {
case _MealItemDto():
return $default(_that.id,_that.name,_that.recognisedItemId,_that.nutritionReference,_that.portion,_that.nutrients,_that.wasModified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? recognisedItemId,  FoodReferenceDto? nutritionReference,  PortionDto portion,  NutrientsDto? nutrients,  bool wasModified)?  $default,) {final _that = this;
switch (_that) {
case _MealItemDto() when $default != null:
return $default(_that.id,_that.name,_that.recognisedItemId,_that.nutritionReference,_that.portion,_that.nutrients,_that.wasModified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealItemDto extends MealItemDto {
  const _MealItemDto({required this.id, required this.name, this.recognisedItemId, this.nutritionReference, this.portion = const PortionDto(), this.nutrients, this.wasModified = false}): super._();
  factory _MealItemDto.fromJson(Map<String, dynamic> json) => _$MealItemDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? recognisedItemId;
@override final  FoodReferenceDto? nutritionReference;
@override@JsonKey() final  PortionDto portion;
@override final  NutrientsDto? nutrients;
@override@JsonKey() final  bool wasModified;

/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealItemDtoCopyWith<_MealItemDto> get copyWith => __$MealItemDtoCopyWithImpl<_MealItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.recognisedItemId, recognisedItemId) || other.recognisedItemId == recognisedItemId)&&(identical(other.nutritionReference, nutritionReference) || other.nutritionReference == nutritionReference)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.wasModified, wasModified) || other.wasModified == wasModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,recognisedItemId,nutritionReference,portion,nutrients,wasModified);
}

@override
String toString() {
    return 'MealItemDto(id: $id, name: $name, recognisedItemId: $recognisedItemId, nutritionReference: $nutritionReference, portion: $portion, nutrients: $nutrients, wasModified: $wasModified)';
}


}

/// @nodoc
abstract mixin class _$MealItemDtoCopyWith<$Res> implements $MealItemDtoCopyWith<$Res> {
  factory _$MealItemDtoCopyWith(_MealItemDto value, $Res Function(_MealItemDto) _then) = __$MealItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? recognisedItemId, FoodReferenceDto? nutritionReference, PortionDto portion, NutrientsDto? nutrients, bool wasModified
});


@override $FoodReferenceDtoCopyWith<$Res>? get nutritionReference;@override $PortionDtoCopyWith<$Res> get portion;@override $NutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class __$MealItemDtoCopyWithImpl<$Res>
    implements _$MealItemDtoCopyWith<$Res> {
  __$MealItemDtoCopyWithImpl(this._self, this._then);

  final _MealItemDto _self;
  final $Res Function(_MealItemDto) _then;

/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? recognisedItemId = freezed,Object? nutritionReference = freezed,Object? portion = null,Object? nutrients = freezed,Object? wasModified = null,}) {
  return _then(_MealItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,nutritionReference: freezed == nutritionReference ? _self.nutritionReference : nutritionReference // ignore: cast_nullable_to_non_nullable
as FoodReferenceDto?,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as PortionDto,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsDto?,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodReferenceDtoCopyWith<$Res>? get nutritionReference {
    if (_self.nutritionReference == null) {
    return null;
  }

  return $FoodReferenceDtoCopyWith<$Res>(_self.nutritionReference!, (value) {
    return _then(_self.copyWith(nutritionReference: value));
  });
}/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortionDtoCopyWith<$Res> get portion {
  
  return $PortionDtoCopyWith<$Res>(_self.portion, (value) {
    return _then(_self.copyWith(portion: value));
  });
}/// Create a copy of MealItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $NutrientsDtoCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// @nodoc
mixin _$MealDto {

 String get id; String get analysisId; DateTime get mealDate; String get status; bool get validatedByUser; NutrientsDto get totals; List<MealItemDto> get items; String? get imageUrl;
/// Create a copy of MealDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDtoCopyWith<MealDto> get copyWith => _$MealDtoCopyWithImpl<MealDto>(this as MealDto, _$identity);

  /// Serializes this MealDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.analysisId, _this.analysisId) || other.analysisId == _this.analysisId)&&(identical(other.mealDate, _this.mealDate) || other.mealDate == _this.mealDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.validatedByUser, _this.validatedByUser) || other.validatedByUser == _this.validatedByUser)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealDto;
  return Object.hash(runtimeType,_this.id,_this.analysisId,_this.mealDate,_this.status,_this.validatedByUser,_this.totals,const DeepCollectionEquality().hash(_this.items),_this.imageUrl);
}

@override
String toString() {
  final _this = this as MealDto;
  return 'MealDto(id: ${_this.id}, analysisId: ${_this.analysisId}, mealDate: ${_this.mealDate}, status: ${_this.status}, validatedByUser: ${_this.validatedByUser}, totals: ${_this.totals}, items: ${_this.items}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $MealDtoCopyWith<$Res>  {
  factory $MealDtoCopyWith(MealDto value, $Res Function(MealDto) _then) = _$MealDtoCopyWithImpl;
@useResult
$Res call({
 String id, String analysisId, DateTime mealDate, String status, bool validatedByUser, NutrientsDto totals, List<MealItemDto> items, String? imageUrl
});


$NutrientsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class _$MealDtoCopyWithImpl<$Res>
    implements $MealDtoCopyWith<$Res> {
  _$MealDtoCopyWithImpl(this._self, this._then);

  final MealDto _self;
  final $Res Function(MealDto) _then;

/// Create a copy of MealDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? analysisId = null,Object? mealDate = null,Object? status = null,Object? validatedByUser = null,Object? totals = null,Object? items = null,Object? imageUrl = freezed,}) {
  return _then(MealDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,analysisId: null == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String,mealDate: null == mealDate ? _self.mealDate : mealDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,validatedByUser: null == validatedByUser ? _self.validatedByUser : validatedByUser // ignore: cast_nullable_to_non_nullable
as bool,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealItemDto>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MealDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsDtoCopyWith<$Res> get totals {
  
  return $NutrientsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealDto].
extension MealDtoPatterns on MealDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDto value)  $default,){
final _that = this;
switch (_that) {
case _MealDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDto value)?  $default,){
final _that = this;
switch (_that) {
case _MealDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String analysisId,  DateTime mealDate,  String status,  bool validatedByUser,  NutrientsDto totals,  List<MealItemDto> items,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDto() when $default != null:
return $default(_that.id,_that.analysisId,_that.mealDate,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String analysisId,  DateTime mealDate,  String status,  bool validatedByUser,  NutrientsDto totals,  List<MealItemDto> items,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _MealDto():
return $default(_that.id,_that.analysisId,_that.mealDate,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String analysisId,  DateTime mealDate,  String status,  bool validatedByUser,  NutrientsDto totals,  List<MealItemDto> items,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _MealDto() when $default != null:
return $default(_that.id,_that.analysisId,_that.mealDate,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealDto extends MealDto {
  const _MealDto({required this.id, required this.analysisId, required this.mealDate, this.status = 'saved', this.validatedByUser = false, required this.totals,  List<MealItemDto> items = const [], this.imageUrl}): _items = items,super._();
  factory _MealDto.fromJson(Map<String, dynamic> json) => _$MealDtoFromJson(json);

@override final  String id;
@override final  String analysisId;
@override final  DateTime mealDate;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool validatedByUser;
@override final  NutrientsDto totals;
 final  List<MealItemDto> _items;
@override@JsonKey() List<MealItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? imageUrl;

/// Create a copy of MealDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDtoCopyWith<_MealDto> get copyWith => __$MealDtoCopyWithImpl<_MealDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDto&&(identical(other.id, id) || other.id == id)&&(identical(other.analysisId, analysisId) || other.analysisId == analysisId)&&(identical(other.mealDate, mealDate) || other.mealDate == mealDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.validatedByUser, validatedByUser) || other.validatedByUser == validatedByUser)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,analysisId,mealDate,status,validatedByUser,totals,const DeepCollectionEquality().hash(_items),imageUrl);
}

@override
String toString() {
    return 'MealDto(id: $id, analysisId: $analysisId, mealDate: $mealDate, status: $status, validatedByUser: $validatedByUser, totals: $totals, items: $items, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$MealDtoCopyWith<$Res> implements $MealDtoCopyWith<$Res> {
  factory _$MealDtoCopyWith(_MealDto value, $Res Function(_MealDto) _then) = __$MealDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String analysisId, DateTime mealDate, String status, bool validatedByUser, NutrientsDto totals, List<MealItemDto> items, String? imageUrl
});


@override $NutrientsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class __$MealDtoCopyWithImpl<$Res>
    implements _$MealDtoCopyWith<$Res> {
  __$MealDtoCopyWithImpl(this._self, this._then);

  final _MealDto _self;
  final $Res Function(_MealDto) _then;

/// Create a copy of MealDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? analysisId = null,Object? mealDate = null,Object? status = null,Object? validatedByUser = null,Object? totals = null,Object? items = null,Object? imageUrl = freezed,}) {
  return _then(_MealDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,analysisId: null == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String,mealDate: null == mealDate ? _self.mealDate : mealDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,validatedByUser: null == validatedByUser ? _self.validatedByUser : validatedByUser // ignore: cast_nullable_to_non_nullable
as bool,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutrientsDto,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealItemDto>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MealDto
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
mixin _$MealResponseDto {

 MealDto get meal;
/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealResponseDtoCopyWith<MealResponseDto> get copyWith => _$MealResponseDtoCopyWithImpl<MealResponseDto>(this as MealResponseDto, _$identity);

  /// Serializes this MealResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealResponseDto&&(identical(other.meal, _this.meal) || other.meal == _this.meal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealResponseDto;
  return Object.hash(runtimeType,_this.meal);
}

@override
String toString() {
  final _this = this as MealResponseDto;
  return 'MealResponseDto(meal: ${_this.meal})';
}


}

/// @nodoc
abstract mixin class $MealResponseDtoCopyWith<$Res>  {
  factory $MealResponseDtoCopyWith(MealResponseDto value, $Res Function(MealResponseDto) _then) = _$MealResponseDtoCopyWithImpl;
@useResult
$Res call({
 MealDto meal
});


$MealDtoCopyWith<$Res> get meal;

}
/// @nodoc
class _$MealResponseDtoCopyWithImpl<$Res>
    implements $MealResponseDtoCopyWith<$Res> {
  _$MealResponseDtoCopyWithImpl(this._self, this._then);

  final MealResponseDto _self;
  final $Res Function(MealResponseDto) _then;

/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meal = null,}) {
  return _then(MealResponseDto(
meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as MealDto,
  ));
}
/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDtoCopyWith<$Res> get meal {
  
  return $MealDtoCopyWith<$Res>(_self.meal, (value) {
    return _then(_self.copyWith(meal: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealResponseDto].
extension MealResponseDtoPatterns on MealResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _MealResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _MealResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MealDto meal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealResponseDto() when $default != null:
return $default(_that.meal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MealDto meal)  $default,) {final _that = this;
switch (_that) {
case _MealResponseDto():
return $default(_that.meal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MealDto meal)?  $default,) {final _that = this;
switch (_that) {
case _MealResponseDto() when $default != null:
return $default(_that.meal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealResponseDto implements MealResponseDto {
  const _MealResponseDto({required this.meal});
  factory _MealResponseDto.fromJson(Map<String, dynamic> json) => _$MealResponseDtoFromJson(json);

@override final  MealDto meal;

/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealResponseDtoCopyWith<_MealResponseDto> get copyWith => __$MealResponseDtoCopyWithImpl<_MealResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealResponseDto&&(identical(other.meal, meal) || other.meal == meal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,meal);
}

@override
String toString() {
    return 'MealResponseDto(meal: $meal)';
}


}

/// @nodoc
abstract mixin class _$MealResponseDtoCopyWith<$Res> implements $MealResponseDtoCopyWith<$Res> {
  factory _$MealResponseDtoCopyWith(_MealResponseDto value, $Res Function(_MealResponseDto) _then) = __$MealResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 MealDto meal
});


@override $MealDtoCopyWith<$Res> get meal;

}
/// @nodoc
class __$MealResponseDtoCopyWithImpl<$Res>
    implements _$MealResponseDtoCopyWith<$Res> {
  __$MealResponseDtoCopyWithImpl(this._self, this._then);

  final _MealResponseDto _self;
  final $Res Function(_MealResponseDto) _then;

/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meal = null,}) {
  return _then(_MealResponseDto(
meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as MealDto,
  ));
}

/// Create a copy of MealResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDtoCopyWith<$Res> get meal {
  
  return $MealDtoCopyWith<$Res>(_self.meal, (value) {
    return _then(_self.copyWith(meal: value));
  });
}
}


/// @nodoc
mixin _$MealListResponseDto {

 List<MealDto> get meals;
/// Create a copy of MealListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealListResponseDtoCopyWith<MealListResponseDto> get copyWith => _$MealListResponseDtoCopyWithImpl<MealListResponseDto>(this as MealListResponseDto, _$identity);

  /// Serializes this MealListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealListResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealListResponseDto&&const DeepCollectionEquality().equals(other.meals, _this.meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealListResponseDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.meals));
}

@override
String toString() {
  final _this = this as MealListResponseDto;
  return 'MealListResponseDto(meals: ${_this.meals})';
}


}

/// @nodoc
abstract mixin class $MealListResponseDtoCopyWith<$Res>  {
  factory $MealListResponseDtoCopyWith(MealListResponseDto value, $Res Function(MealListResponseDto) _then) = _$MealListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<MealDto> meals
});




}
/// @nodoc
class _$MealListResponseDtoCopyWithImpl<$Res>
    implements $MealListResponseDtoCopyWith<$Res> {
  _$MealListResponseDtoCopyWithImpl(this._self, this._then);

  final MealListResponseDto _self;
  final $Res Function(MealListResponseDto) _then;

/// Create a copy of MealListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(MealListResponseDto(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealListResponseDto].
extension MealListResponseDtoPatterns on MealListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _MealListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _MealListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MealDto> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealListResponseDto() when $default != null:
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MealDto> meals)  $default,) {final _that = this;
switch (_that) {
case _MealListResponseDto():
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MealDto> meals)?  $default,) {final _that = this;
switch (_that) {
case _MealListResponseDto() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealListResponseDto implements MealListResponseDto {
  const _MealListResponseDto({ List<MealDto> meals = const []}): _meals = meals;
  factory _MealListResponseDto.fromJson(Map<String, dynamic> json) => _$MealListResponseDtoFromJson(json);

 final  List<MealDto> _meals;
@override@JsonKey() List<MealDto> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of MealListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealListResponseDtoCopyWith<_MealListResponseDto> get copyWith => __$MealListResponseDtoCopyWithImpl<_MealListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealListResponseDto&&const DeepCollectionEquality().equals(other.meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));
}

@override
String toString() {
    return 'MealListResponseDto(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealListResponseDtoCopyWith<$Res> implements $MealListResponseDtoCopyWith<$Res> {
  factory _$MealListResponseDtoCopyWith(_MealListResponseDto value, $Res Function(_MealListResponseDto) _then) = __$MealListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MealDto> meals
});




}
/// @nodoc
class __$MealListResponseDtoCopyWithImpl<$Res>
    implements _$MealListResponseDtoCopyWith<$Res> {
  __$MealListResponseDtoCopyWithImpl(this._self, this._then);

  final _MealListResponseDto _self;
  final $Res Function(_MealListResponseDto) _then;

/// Create a copy of MealListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_MealListResponseDto(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealDto>,
  ));
}


}

// dart format on
