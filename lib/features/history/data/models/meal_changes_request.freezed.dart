// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_changes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealItemInputDto {

@JsonKey(includeIfNull: false) String? get recognisedItemId; String get name;@JsonKey(includeIfNull: false) String? get nutritionReferenceId; double get quantity; String get unit;@JsonKey(includeIfNull: false) double? get calories;@JsonKey(includeIfNull: false) double? get protein;@JsonKey(includeIfNull: false) double? get carbohydrates;@JsonKey(includeIfNull: false) double? get fat;
/// Create a copy of MealItemInputDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealItemInputDtoCopyWith<MealItemInputDto> get copyWith => _$MealItemInputDtoCopyWithImpl<MealItemInputDto>(this as MealItemInputDto, _$identity);

  /// Serializes this MealItemInputDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealItemInputDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealItemInputDto&&(identical(other.recognisedItemId, _this.recognisedItemId) || other.recognisedItemId == _this.recognisedItemId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.nutritionReferenceId, _this.nutritionReferenceId) || other.nutritionReferenceId == _this.nutritionReferenceId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.protein, _this.protein) || other.protein == _this.protein)&&(identical(other.carbohydrates, _this.carbohydrates) || other.carbohydrates == _this.carbohydrates)&&(identical(other.fat, _this.fat) || other.fat == _this.fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealItemInputDto;
  return Object.hash(runtimeType,_this.recognisedItemId,_this.name,_this.nutritionReferenceId,_this.quantity,_this.unit,_this.calories,_this.protein,_this.carbohydrates,_this.fat);
}

@override
String toString() {
  final _this = this as MealItemInputDto;
  return 'MealItemInputDto(recognisedItemId: ${_this.recognisedItemId}, name: ${_this.name}, nutritionReferenceId: ${_this.nutritionReferenceId}, quantity: ${_this.quantity}, unit: ${_this.unit}, calories: ${_this.calories}, protein: ${_this.protein}, carbohydrates: ${_this.carbohydrates}, fat: ${_this.fat})';
}


}

/// @nodoc
abstract mixin class $MealItemInputDtoCopyWith<$Res>  {
  factory $MealItemInputDtoCopyWith(MealItemInputDto value, $Res Function(MealItemInputDto) _then) = _$MealItemInputDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? recognisedItemId, String name,@JsonKey(includeIfNull: false) String? nutritionReferenceId, double quantity, String unit,@JsonKey(includeIfNull: false) double? calories,@JsonKey(includeIfNull: false) double? protein,@JsonKey(includeIfNull: false) double? carbohydrates,@JsonKey(includeIfNull: false) double? fat
});




}
/// @nodoc
class _$MealItemInputDtoCopyWithImpl<$Res>
    implements $MealItemInputDtoCopyWith<$Res> {
  _$MealItemInputDtoCopyWithImpl(this._self, this._then);

  final MealItemInputDto _self;
  final $Res Function(MealItemInputDto) _then;

/// Create a copy of MealItemInputDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recognisedItemId = freezed,Object? name = null,Object? nutritionReferenceId = freezed,Object? quantity = null,Object? unit = null,Object? calories = freezed,Object? protein = freezed,Object? carbohydrates = freezed,Object? fat = freezed,}) {
  return _then(MealItemInputDto(
recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutritionReferenceId: freezed == nutritionReferenceId ? _self.nutritionReferenceId : nutritionReferenceId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MealItemInputDto].
extension MealItemInputDtoPatterns on MealItemInputDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealItemInputDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealItemInputDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealItemInputDto value)  $default,){
final _that = this;
switch (_that) {
case _MealItemInputDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealItemInputDto value)?  $default,){
final _that = this;
switch (_that) {
case _MealItemInputDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? recognisedItemId,  String name, @JsonKey(includeIfNull: false)  String? nutritionReferenceId,  double quantity,  String unit, @JsonKey(includeIfNull: false)  double? calories, @JsonKey(includeIfNull: false)  double? protein, @JsonKey(includeIfNull: false)  double? carbohydrates, @JsonKey(includeIfNull: false)  double? fat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealItemInputDto() when $default != null:
return $default(_that.recognisedItemId,_that.name,_that.nutritionReferenceId,_that.quantity,_that.unit,_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? recognisedItemId,  String name, @JsonKey(includeIfNull: false)  String? nutritionReferenceId,  double quantity,  String unit, @JsonKey(includeIfNull: false)  double? calories, @JsonKey(includeIfNull: false)  double? protein, @JsonKey(includeIfNull: false)  double? carbohydrates, @JsonKey(includeIfNull: false)  double? fat)  $default,) {final _that = this;
switch (_that) {
case _MealItemInputDto():
return $default(_that.recognisedItemId,_that.name,_that.nutritionReferenceId,_that.quantity,_that.unit,_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? recognisedItemId,  String name, @JsonKey(includeIfNull: false)  String? nutritionReferenceId,  double quantity,  String unit, @JsonKey(includeIfNull: false)  double? calories, @JsonKey(includeIfNull: false)  double? protein, @JsonKey(includeIfNull: false)  double? carbohydrates, @JsonKey(includeIfNull: false)  double? fat)?  $default,) {final _that = this;
switch (_that) {
case _MealItemInputDto() when $default != null:
return $default(_that.recognisedItemId,_that.name,_that.nutritionReferenceId,_that.quantity,_that.unit,_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealItemInputDto implements MealItemInputDto {
  const _MealItemInputDto({@JsonKey(includeIfNull: false) this.recognisedItemId, required this.name, @JsonKey(includeIfNull: false) this.nutritionReferenceId, required this.quantity, required this.unit, @JsonKey(includeIfNull: false) this.calories, @JsonKey(includeIfNull: false) this.protein, @JsonKey(includeIfNull: false) this.carbohydrates, @JsonKey(includeIfNull: false) this.fat});
  factory _MealItemInputDto.fromJson(Map<String, dynamic> json) => _$MealItemInputDtoFromJson(json);

@override@JsonKey(includeIfNull: false) final  String? recognisedItemId;
@override final  String name;
@override@JsonKey(includeIfNull: false) final  String? nutritionReferenceId;
@override final  double quantity;
@override final  String unit;
@override@JsonKey(includeIfNull: false) final  double? calories;
@override@JsonKey(includeIfNull: false) final  double? protein;
@override@JsonKey(includeIfNull: false) final  double? carbohydrates;
@override@JsonKey(includeIfNull: false) final  double? fat;

/// Create a copy of MealItemInputDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealItemInputDtoCopyWith<_MealItemInputDto> get copyWith => __$MealItemInputDtoCopyWithImpl<_MealItemInputDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealItemInputDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealItemInputDto&&(identical(other.recognisedItemId, recognisedItemId) || other.recognisedItemId == recognisedItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutritionReferenceId, nutritionReferenceId) || other.nutritionReferenceId == nutritionReferenceId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,recognisedItemId,name,nutritionReferenceId,quantity,unit,calories,protein,carbohydrates,fat);
}

@override
String toString() {
    return 'MealItemInputDto(recognisedItemId: $recognisedItemId, name: $name, nutritionReferenceId: $nutritionReferenceId, quantity: $quantity, unit: $unit, calories: $calories, protein: $protein, carbohydrates: $carbohydrates, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$MealItemInputDtoCopyWith<$Res> implements $MealItemInputDtoCopyWith<$Res> {
  factory _$MealItemInputDtoCopyWith(_MealItemInputDto value, $Res Function(_MealItemInputDto) _then) = __$MealItemInputDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? recognisedItemId, String name,@JsonKey(includeIfNull: false) String? nutritionReferenceId, double quantity, String unit,@JsonKey(includeIfNull: false) double? calories,@JsonKey(includeIfNull: false) double? protein,@JsonKey(includeIfNull: false) double? carbohydrates,@JsonKey(includeIfNull: false) double? fat
});




}
/// @nodoc
class __$MealItemInputDtoCopyWithImpl<$Res>
    implements _$MealItemInputDtoCopyWith<$Res> {
  __$MealItemInputDtoCopyWithImpl(this._self, this._then);

  final _MealItemInputDto _self;
  final $Res Function(_MealItemInputDto) _then;

/// Create a copy of MealItemInputDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recognisedItemId = freezed,Object? name = null,Object? nutritionReferenceId = freezed,Object? quantity = null,Object? unit = null,Object? calories = freezed,Object? protein = freezed,Object? carbohydrates = freezed,Object? fat = freezed,}) {
  return _then(_MealItemInputDto(
recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutritionReferenceId: freezed == nutritionReferenceId ? _self.nutritionReferenceId : nutritionReferenceId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$MealChangesRequest {

@JsonKey(includeIfNull: false) List<MealItemInputDto>? get items;
/// Create a copy of MealChangesRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealChangesRequestCopyWith<MealChangesRequest> get copyWith => _$MealChangesRequestCopyWithImpl<MealChangesRequest>(this as MealChangesRequest, _$identity);

  /// Serializes this MealChangesRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MealChangesRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealChangesRequest&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MealChangesRequest;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as MealChangesRequest;
  return 'MealChangesRequest(items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $MealChangesRequestCopyWith<$Res>  {
  factory $MealChangesRequestCopyWith(MealChangesRequest value, $Res Function(MealChangesRequest) _then) = _$MealChangesRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) List<MealItemInputDto>? items
});




}
/// @nodoc
class _$MealChangesRequestCopyWithImpl<$Res>
    implements $MealChangesRequestCopyWith<$Res> {
  _$MealChangesRequestCopyWithImpl(this._self, this._then);

  final MealChangesRequest _self;
  final $Res Function(MealChangesRequest) _then;

/// Create a copy of MealChangesRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,}) {
  return _then(MealChangesRequest(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealItemInputDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MealChangesRequest].
extension MealChangesRequestPatterns on MealChangesRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealChangesRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealChangesRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealChangesRequest value)  $default,){
final _that = this;
switch (_that) {
case _MealChangesRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealChangesRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MealChangesRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  List<MealItemInputDto>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealChangesRequest() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  List<MealItemInputDto>? items)  $default,) {final _that = this;
switch (_that) {
case _MealChangesRequest():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  List<MealItemInputDto>? items)?  $default,) {final _that = this;
switch (_that) {
case _MealChangesRequest() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _MealChangesRequest implements MealChangesRequest {
  const _MealChangesRequest({@JsonKey(includeIfNull: false)  List<MealItemInputDto>? items}): _items = items;
  factory _MealChangesRequest.fromJson(Map<String, dynamic> json) => _$MealChangesRequestFromJson(json);

 final  List<MealItemInputDto>? _items;
@override@JsonKey(includeIfNull: false) List<MealItemInputDto>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MealChangesRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealChangesRequestCopyWith<_MealChangesRequest> get copyWith => __$MealChangesRequestCopyWithImpl<_MealChangesRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealChangesRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealChangesRequest&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'MealChangesRequest(items: $items)';
}


}

/// @nodoc
abstract mixin class _$MealChangesRequestCopyWith<$Res> implements $MealChangesRequestCopyWith<$Res> {
  factory _$MealChangesRequestCopyWith(_MealChangesRequest value, $Res Function(_MealChangesRequest) _then) = __$MealChangesRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) List<MealItemInputDto>? items
});




}
/// @nodoc
class __$MealChangesRequestCopyWithImpl<$Res>
    implements _$MealChangesRequestCopyWith<$Res> {
  __$MealChangesRequestCopyWithImpl(this._self, this._then);

  final _MealChangesRequest _self;
  final $Res Function(_MealChangesRequest) _then;

/// Create a copy of MealChangesRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,}) {
  return _then(_MealChangesRequest(
items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealItemInputDto>?,
  ));
}


}

// dart format on
