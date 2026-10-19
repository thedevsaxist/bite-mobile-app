// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypicalServingDto {

 double get size; String get label;
/// Create a copy of TypicalServingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypicalServingDtoCopyWith<TypicalServingDto> get copyWith => _$TypicalServingDtoCopyWithImpl<TypicalServingDto>(this as TypicalServingDto, _$identity);

  /// Serializes this TypicalServingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TypicalServingDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypicalServingDto&&(identical(other.size, _this.size) || other.size == _this.size)&&(identical(other.label, _this.label) || other.label == _this.label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TypicalServingDto;
  return Object.hash(runtimeType,_this.size,_this.label);
}

@override
String toString() {
  final _this = this as TypicalServingDto;
  return 'TypicalServingDto(size: ${_this.size}, label: ${_this.label})';
}


}

/// @nodoc
abstract mixin class $TypicalServingDtoCopyWith<$Res>  {
  factory $TypicalServingDtoCopyWith(TypicalServingDto value, $Res Function(TypicalServingDto) _then) = _$TypicalServingDtoCopyWithImpl;
@useResult
$Res call({
 double size, String label
});




}
/// @nodoc
class _$TypicalServingDtoCopyWithImpl<$Res>
    implements $TypicalServingDtoCopyWith<$Res> {
  _$TypicalServingDtoCopyWithImpl(this._self, this._then);

  final TypicalServingDto _self;
  final $Res Function(TypicalServingDto) _then;

/// Create a copy of TypicalServingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? size = null,Object? label = null,}) {
  return _then(TypicalServingDto(
size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypicalServingDto].
extension TypicalServingDtoPatterns on TypicalServingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypicalServingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypicalServingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypicalServingDto value)  $default,){
final _that = this;
switch (_that) {
case _TypicalServingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypicalServingDto value)?  $default,){
final _that = this;
switch (_that) {
case _TypicalServingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double size,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypicalServingDto() when $default != null:
return $default(_that.size,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double size,  String label)  $default,) {final _that = this;
switch (_that) {
case _TypicalServingDto():
return $default(_that.size,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double size,  String label)?  $default,) {final _that = this;
switch (_that) {
case _TypicalServingDto() when $default != null:
return $default(_that.size,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypicalServingDto implements TypicalServingDto {
  const _TypicalServingDto({required this.size, required this.label});
  factory _TypicalServingDto.fromJson(Map<String, dynamic> json) => _$TypicalServingDtoFromJson(json);

@override final  double size;
@override final  String label;

/// Create a copy of TypicalServingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypicalServingDtoCopyWith<_TypicalServingDto> get copyWith => __$TypicalServingDtoCopyWithImpl<_TypicalServingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypicalServingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypicalServingDto&&(identical(other.size, size) || other.size == size)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,size,label);
}

@override
String toString() {
    return 'TypicalServingDto(size: $size, label: $label)';
}


}

/// @nodoc
abstract mixin class _$TypicalServingDtoCopyWith<$Res> implements $TypicalServingDtoCopyWith<$Res> {
  factory _$TypicalServingDtoCopyWith(_TypicalServingDto value, $Res Function(_TypicalServingDto) _then) = __$TypicalServingDtoCopyWithImpl;
@override @useResult
$Res call({
 double size, String label
});




}
/// @nodoc
class __$TypicalServingDtoCopyWithImpl<$Res>
    implements _$TypicalServingDtoCopyWith<$Res> {
  __$TypicalServingDtoCopyWithImpl(this._self, this._then);

  final _TypicalServingDto _self;
  final $Res Function(_TypicalServingDto) _then;

/// Create a copy of TypicalServingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? size = null,Object? label = null,}) {
  return _then(_TypicalServingDto(
size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FoodDto {

 String get id; String get key; String get name; double get servingSize; double get calories; double get protein; double get carbohydrates; double get fat; TypicalServingDto get typicalServing;
/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDtoCopyWith<FoodDto> get copyWith => _$FoodDtoCopyWithImpl<FoodDto>(this as FoodDto, _$identity);

  /// Serializes this FoodDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FoodDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.servingSize, _this.servingSize) || other.servingSize == _this.servingSize)&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.protein, _this.protein) || other.protein == _this.protein)&&(identical(other.carbohydrates, _this.carbohydrates) || other.carbohydrates == _this.carbohydrates)&&(identical(other.fat, _this.fat) || other.fat == _this.fat)&&(identical(other.typicalServing, _this.typicalServing) || other.typicalServing == _this.typicalServing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FoodDto;
  return Object.hash(runtimeType,_this.id,_this.key,_this.name,_this.servingSize,_this.calories,_this.protein,_this.carbohydrates,_this.fat,_this.typicalServing);
}

@override
String toString() {
  final _this = this as FoodDto;
  return 'FoodDto(id: ${_this.id}, key: ${_this.key}, name: ${_this.name}, servingSize: ${_this.servingSize}, calories: ${_this.calories}, protein: ${_this.protein}, carbohydrates: ${_this.carbohydrates}, fat: ${_this.fat}, typicalServing: ${_this.typicalServing})';
}


}

/// @nodoc
abstract mixin class $FoodDtoCopyWith<$Res>  {
  factory $FoodDtoCopyWith(FoodDto value, $Res Function(FoodDto) _then) = _$FoodDtoCopyWithImpl;
@useResult
$Res call({
 String id, String key, String name, double servingSize, double calories, double protein, double carbohydrates, double fat, TypicalServingDto typicalServing
});


$TypicalServingDtoCopyWith<$Res> get typicalServing;

}
/// @nodoc
class _$FoodDtoCopyWithImpl<$Res>
    implements $FoodDtoCopyWith<$Res> {
  _$FoodDtoCopyWithImpl(this._self, this._then);

  final FoodDto _self;
  final $Res Function(FoodDto) _then;

/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? name = null,Object? servingSize = null,Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,Object? typicalServing = null,}) {
  return _then(FoodDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,servingSize: null == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as double,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,typicalServing: null == typicalServing ? _self.typicalServing : typicalServing // ignore: cast_nullable_to_non_nullable
as TypicalServingDto,
  ));
}
/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypicalServingDtoCopyWith<$Res> get typicalServing {
  
  return $TypicalServingDtoCopyWith<$Res>(_self.typicalServing, (value) {
    return _then(_self.copyWith(typicalServing: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodDto].
extension FoodDtoPatterns on FoodDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String key,  String name,  double servingSize,  double calories,  double protein,  double carbohydrates,  double fat,  TypicalServingDto typicalServing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDto() when $default != null:
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.calories,_that.protein,_that.carbohydrates,_that.fat,_that.typicalServing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String key,  String name,  double servingSize,  double calories,  double protein,  double carbohydrates,  double fat,  TypicalServingDto typicalServing)  $default,) {final _that = this;
switch (_that) {
case _FoodDto():
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.calories,_that.protein,_that.carbohydrates,_that.fat,_that.typicalServing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String key,  String name,  double servingSize,  double calories,  double protein,  double carbohydrates,  double fat,  TypicalServingDto typicalServing)?  $default,) {final _that = this;
switch (_that) {
case _FoodDto() when $default != null:
return $default(_that.id,_that.key,_that.name,_that.servingSize,_that.calories,_that.protein,_that.carbohydrates,_that.fat,_that.typicalServing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDto extends FoodDto {
  const _FoodDto({required this.id, required this.key, required this.name, required this.servingSize, required this.calories, required this.protein, required this.carbohydrates, required this.fat, required this.typicalServing}): super._();
  factory _FoodDto.fromJson(Map<String, dynamic> json) => _$FoodDtoFromJson(json);

@override final  String id;
@override final  String key;
@override final  String name;
@override final  double servingSize;
@override final  double calories;
@override final  double protein;
@override final  double carbohydrates;
@override final  double fat;
@override final  TypicalServingDto typicalServing;

/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDtoCopyWith<_FoodDto> get copyWith => __$FoodDtoCopyWithImpl<_FoodDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDto&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.typicalServing, typicalServing) || other.typicalServing == typicalServing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,key,name,servingSize,calories,protein,carbohydrates,fat,typicalServing);
}

@override
String toString() {
    return 'FoodDto(id: $id, key: $key, name: $name, servingSize: $servingSize, calories: $calories, protein: $protein, carbohydrates: $carbohydrates, fat: $fat, typicalServing: $typicalServing)';
}


}

/// @nodoc
abstract mixin class _$FoodDtoCopyWith<$Res> implements $FoodDtoCopyWith<$Res> {
  factory _$FoodDtoCopyWith(_FoodDto value, $Res Function(_FoodDto) _then) = __$FoodDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String key, String name, double servingSize, double calories, double protein, double carbohydrates, double fat, TypicalServingDto typicalServing
});


@override $TypicalServingDtoCopyWith<$Res> get typicalServing;

}
/// @nodoc
class __$FoodDtoCopyWithImpl<$Res>
    implements _$FoodDtoCopyWith<$Res> {
  __$FoodDtoCopyWithImpl(this._self, this._then);

  final _FoodDto _self;
  final $Res Function(_FoodDto) _then;

/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? name = null,Object? servingSize = null,Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,Object? typicalServing = null,}) {
  return _then(_FoodDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,servingSize: null == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as double,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,typicalServing: null == typicalServing ? _self.typicalServing : typicalServing // ignore: cast_nullable_to_non_nullable
as TypicalServingDto,
  ));
}

/// Create a copy of FoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypicalServingDtoCopyWith<$Res> get typicalServing {
  
  return $TypicalServingDtoCopyWith<$Res>(_self.typicalServing, (value) {
    return _then(_self.copyWith(typicalServing: value));
  });
}
}


/// @nodoc
mixin _$FoodListResponseDto {

 List<FoodDto> get foods;
/// Create a copy of FoodListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodListResponseDtoCopyWith<FoodListResponseDto> get copyWith => _$FoodListResponseDtoCopyWithImpl<FoodListResponseDto>(this as FoodListResponseDto, _$identity);

  /// Serializes this FoodListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FoodListResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodListResponseDto&&const DeepCollectionEquality().equals(other.foods, _this.foods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FoodListResponseDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.foods));
}

@override
String toString() {
  final _this = this as FoodListResponseDto;
  return 'FoodListResponseDto(foods: ${_this.foods})';
}


}

/// @nodoc
abstract mixin class $FoodListResponseDtoCopyWith<$Res>  {
  factory $FoodListResponseDtoCopyWith(FoodListResponseDto value, $Res Function(FoodListResponseDto) _then) = _$FoodListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<FoodDto> foods
});




}
/// @nodoc
class _$FoodListResponseDtoCopyWithImpl<$Res>
    implements $FoodListResponseDtoCopyWith<$Res> {
  _$FoodListResponseDtoCopyWithImpl(this._self, this._then);

  final FoodListResponseDto _self;
  final $Res Function(FoodListResponseDto) _then;

/// Create a copy of FoodListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foods = null,}) {
  return _then(FoodListResponseDto(
foods: null == foods ? _self.foods : foods // ignore: cast_nullable_to_non_nullable
as List<FoodDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodListResponseDto].
extension FoodListResponseDtoPatterns on FoodListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FoodDto> foods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodListResponseDto() when $default != null:
return $default(_that.foods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FoodDto> foods)  $default,) {final _that = this;
switch (_that) {
case _FoodListResponseDto():
return $default(_that.foods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FoodDto> foods)?  $default,) {final _that = this;
switch (_that) {
case _FoodListResponseDto() when $default != null:
return $default(_that.foods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodListResponseDto implements FoodListResponseDto {
  const _FoodListResponseDto({ List<FoodDto> foods = const []}): _foods = foods;
  factory _FoodListResponseDto.fromJson(Map<String, dynamic> json) => _$FoodListResponseDtoFromJson(json);

 final  List<FoodDto> _foods;
@override@JsonKey() List<FoodDto> get foods {
  if (_foods is EqualUnmodifiableListView) return _foods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foods);
}


/// Create a copy of FoodListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodListResponseDtoCopyWith<_FoodListResponseDto> get copyWith => __$FoodListResponseDtoCopyWithImpl<_FoodListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodListResponseDto&&const DeepCollectionEquality().equals(other.foods, _foods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_foods));
}

@override
String toString() {
    return 'FoodListResponseDto(foods: $foods)';
}


}

/// @nodoc
abstract mixin class _$FoodListResponseDtoCopyWith<$Res> implements $FoodListResponseDtoCopyWith<$Res> {
  factory _$FoodListResponseDtoCopyWith(_FoodListResponseDto value, $Res Function(_FoodListResponseDto) _then) = __$FoodListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<FoodDto> foods
});




}
/// @nodoc
class __$FoodListResponseDtoCopyWithImpl<$Res>
    implements _$FoodListResponseDtoCopyWith<$Res> {
  __$FoodListResponseDtoCopyWithImpl(this._self, this._then);

  final _FoodListResponseDto _self;
  final $Res Function(_FoodListResponseDto) _then;

/// Create a copy of FoodListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foods = null,}) {
  return _then(_FoodListResponseDto(
foods: null == foods ? _self._foods : foods // ignore: cast_nullable_to_non_nullable
as List<FoodDto>,
  ));
}


}


/// @nodoc
mixin _$FoodResponseDto {

 FoodDto get food;
/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodResponseDtoCopyWith<FoodResponseDto> get copyWith => _$FoodResponseDtoCopyWithImpl<FoodResponseDto>(this as FoodResponseDto, _$identity);

  /// Serializes this FoodResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FoodResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodResponseDto&&(identical(other.food, _this.food) || other.food == _this.food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FoodResponseDto;
  return Object.hash(runtimeType,_this.food);
}

@override
String toString() {
  final _this = this as FoodResponseDto;
  return 'FoodResponseDto(food: ${_this.food})';
}


}

/// @nodoc
abstract mixin class $FoodResponseDtoCopyWith<$Res>  {
  factory $FoodResponseDtoCopyWith(FoodResponseDto value, $Res Function(FoodResponseDto) _then) = _$FoodResponseDtoCopyWithImpl;
@useResult
$Res call({
 FoodDto food
});


$FoodDtoCopyWith<$Res> get food;

}
/// @nodoc
class _$FoodResponseDtoCopyWithImpl<$Res>
    implements $FoodResponseDtoCopyWith<$Res> {
  _$FoodResponseDtoCopyWithImpl(this._self, this._then);

  final FoodResponseDto _self;
  final $Res Function(FoodResponseDto) _then;

/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? food = null,}) {
  return _then(FoodResponseDto(
food: null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as FoodDto,
  ));
}
/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDtoCopyWith<$Res> get food {
  
  return $FoodDtoCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodResponseDto].
extension FoodResponseDtoPatterns on FoodResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FoodDto food)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodResponseDto() when $default != null:
return $default(_that.food);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FoodDto food)  $default,) {final _that = this;
switch (_that) {
case _FoodResponseDto():
return $default(_that.food);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FoodDto food)?  $default,) {final _that = this;
switch (_that) {
case _FoodResponseDto() when $default != null:
return $default(_that.food);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodResponseDto implements FoodResponseDto {
  const _FoodResponseDto({required this.food});
  factory _FoodResponseDto.fromJson(Map<String, dynamic> json) => _$FoodResponseDtoFromJson(json);

@override final  FoodDto food;

/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodResponseDtoCopyWith<_FoodResponseDto> get copyWith => __$FoodResponseDtoCopyWithImpl<_FoodResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodResponseDto&&(identical(other.food, food) || other.food == food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,food);
}

@override
String toString() {
    return 'FoodResponseDto(food: $food)';
}


}

/// @nodoc
abstract mixin class _$FoodResponseDtoCopyWith<$Res> implements $FoodResponseDtoCopyWith<$Res> {
  factory _$FoodResponseDtoCopyWith(_FoodResponseDto value, $Res Function(_FoodResponseDto) _then) = __$FoodResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 FoodDto food
});


@override $FoodDtoCopyWith<$Res> get food;

}
/// @nodoc
class __$FoodResponseDtoCopyWithImpl<$Res>
    implements _$FoodResponseDtoCopyWith<$Res> {
  __$FoodResponseDtoCopyWithImpl(this._self, this._then);

  final _FoodResponseDto _self;
  final $Res Function(_FoodResponseDto) _then;

/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? food = null,}) {
  return _then(_FoodResponseDto(
food: null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as FoodDto,
  ));
}

/// Create a copy of FoodResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDtoCopyWith<$Res> get food {
  
  return $FoodDtoCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}

// dart format on
