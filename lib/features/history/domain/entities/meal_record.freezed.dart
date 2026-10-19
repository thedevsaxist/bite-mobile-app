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
mixin _$Nutrients {

 double get calories; double get protein; double get carbohydrates; double get fat;
/// Create a copy of Nutrients
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientsCopyWith<Nutrients> get copyWith => _$NutrientsCopyWithImpl<Nutrients>(this as Nutrients, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Nutrients;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nutrients&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.protein, _this.protein) || other.protein == _this.protein)&&(identical(other.carbohydrates, _this.carbohydrates) || other.carbohydrates == _this.carbohydrates)&&(identical(other.fat, _this.fat) || other.fat == _this.fat));
}


@override
int get hashCode {
  final _this = this as Nutrients;
  return Object.hash(runtimeType,_this.calories,_this.protein,_this.carbohydrates,_this.fat);
}

@override
String toString() {
  final _this = this as Nutrients;
  return 'Nutrients(calories: ${_this.calories}, protein: ${_this.protein}, carbohydrates: ${_this.carbohydrates}, fat: ${_this.fat})';
}


}

/// @nodoc
abstract mixin class $NutrientsCopyWith<$Res>  {
  factory $NutrientsCopyWith(Nutrients value, $Res Function(Nutrients) _then) = _$NutrientsCopyWithImpl;
@useResult
$Res call({
 double calories, double protein, double carbohydrates, double fat
});




}
/// @nodoc
class _$NutrientsCopyWithImpl<$Res>
    implements $NutrientsCopyWith<$Res> {
  _$NutrientsCopyWithImpl(this._self, this._then);

  final Nutrients _self;
  final $Res Function(Nutrients) _then;

/// Create a copy of Nutrients
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,}) {
  return _then(Nutrients(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Nutrients].
extension NutrientsPatterns on Nutrients {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nutrients value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nutrients() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nutrients value)  $default,){
final _that = this;
switch (_that) {
case _Nutrients():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nutrients value)?  $default,){
final _that = this;
switch (_that) {
case _Nutrients() when $default != null:
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
case _Nutrients() when $default != null:
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
case _Nutrients():
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
case _Nutrients() when $default != null:
return $default(_that.calories,_that.protein,_that.carbohydrates,_that.fat);case _:
  return null;

}
}

}

/// @nodoc


class _Nutrients extends Nutrients {
  const _Nutrients({this.calories = 0, this.protein = 0, this.carbohydrates = 0, this.fat = 0}): super._();
  

@override@JsonKey() final  double calories;
@override@JsonKey() final  double protein;
@override@JsonKey() final  double carbohydrates;
@override@JsonKey() final  double fat;

/// Create a copy of Nutrients
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientsCopyWith<_Nutrients> get copyWith => __$NutrientsCopyWithImpl<_Nutrients>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nutrients&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat, fat) || other.fat == fat));
}


@override
int get hashCode {
    return Object.hash(runtimeType,calories,protein,carbohydrates,fat);
}

@override
String toString() {
    return 'Nutrients(calories: $calories, protein: $protein, carbohydrates: $carbohydrates, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$NutrientsCopyWith<$Res> implements $NutrientsCopyWith<$Res> {
  factory _$NutrientsCopyWith(_Nutrients value, $Res Function(_Nutrients) _then) = __$NutrientsCopyWithImpl;
@override @useResult
$Res call({
 double calories, double protein, double carbohydrates, double fat
});




}
/// @nodoc
class __$NutrientsCopyWithImpl<$Res>
    implements _$NutrientsCopyWith<$Res> {
  __$NutrientsCopyWithImpl(this._self, this._then);

  final _Nutrients _self;
  final $Res Function(_Nutrients) _then;

/// Create a copy of Nutrients
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calories = null,Object? protein = null,Object? carbohydrates = null,Object? fat = null,}) {
  return _then(_Nutrients(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$FoodReference {

 String get id; String get key; String get name;
/// Create a copy of FoodReference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodReferenceCopyWith<FoodReference> get copyWith => _$FoodReferenceCopyWithImpl<FoodReference>(this as FoodReference, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FoodReference;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodReference&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as FoodReference;
  return Object.hash(runtimeType,_this.id,_this.key,_this.name);
}

@override
String toString() {
  final _this = this as FoodReference;
  return 'FoodReference(id: ${_this.id}, key: ${_this.key}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $FoodReferenceCopyWith<$Res>  {
  factory $FoodReferenceCopyWith(FoodReference value, $Res Function(FoodReference) _then) = _$FoodReferenceCopyWithImpl;
@useResult
$Res call({
 String id, String key, String name
});




}
/// @nodoc
class _$FoodReferenceCopyWithImpl<$Res>
    implements $FoodReferenceCopyWith<$Res> {
  _$FoodReferenceCopyWithImpl(this._self, this._then);

  final FoodReference _self;
  final $Res Function(FoodReference) _then;

/// Create a copy of FoodReference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? name = null,}) {
  return _then(FoodReference(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodReference].
extension FoodReferencePatterns on FoodReference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodReference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodReference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodReference value)  $default,){
final _that = this;
switch (_that) {
case _FoodReference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodReference value)?  $default,){
final _that = this;
switch (_that) {
case _FoodReference() when $default != null:
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
case _FoodReference() when $default != null:
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
case _FoodReference():
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
case _FoodReference() when $default != null:
return $default(_that.id,_that.key,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _FoodReference implements FoodReference {
  const _FoodReference({required this.id, required this.key, required this.name});
  

@override final  String id;
@override final  String key;
@override final  String name;

/// Create a copy of FoodReference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodReferenceCopyWith<_FoodReference> get copyWith => __$FoodReferenceCopyWithImpl<_FoodReference>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodReference&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,key,name);
}

@override
String toString() {
    return 'FoodReference(id: $id, key: $key, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FoodReferenceCopyWith<$Res> implements $FoodReferenceCopyWith<$Res> {
  factory _$FoodReferenceCopyWith(_FoodReference value, $Res Function(_FoodReference) _then) = __$FoodReferenceCopyWithImpl;
@override @useResult
$Res call({
 String id, String key, String name
});




}
/// @nodoc
class __$FoodReferenceCopyWithImpl<$Res>
    implements _$FoodReferenceCopyWith<$Res> {
  __$FoodReferenceCopyWithImpl(this._self, this._then);

  final _FoodReference _self;
  final $Res Function(_FoodReference) _then;

/// Create a copy of FoodReference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? name = null,}) {
  return _then(_FoodReference(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MealItem {

 String get id;/// The recognised item this is (or corrects); null for a food the user
/// added.
 String? get recognisedItemId; String get name;/// The AI's wording, e.g. "1 plate". Null once the portion is edited.
 String? get portionDescription;/// Null when the AI couldn't estimate the amount of an unmatched food.
 double? get quantity; PortionUnit? get unit;/// Null when the food isn't in the reference data.
 FoodReference? get reference;/// Null without reference data: no calories are made up.
 Nutrients? get nutrients; bool get wasModified;
/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealItemCopyWith<MealItem> get copyWith => _$MealItemCopyWithImpl<MealItem>(this as MealItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MealItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recognisedItemId, _this.recognisedItemId) || other.recognisedItemId == _this.recognisedItemId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.portionDescription, _this.portionDescription) || other.portionDescription == _this.portionDescription)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.nutrients, _this.nutrients) || other.nutrients == _this.nutrients)&&(identical(other.wasModified, _this.wasModified) || other.wasModified == _this.wasModified));
}


@override
int get hashCode {
  final _this = this as MealItem;
  return Object.hash(runtimeType,_this.id,_this.recognisedItemId,_this.name,_this.portionDescription,_this.quantity,_this.unit,_this.reference,_this.nutrients,_this.wasModified);
}

@override
String toString() {
  final _this = this as MealItem;
  return 'MealItem(id: ${_this.id}, recognisedItemId: ${_this.recognisedItemId}, name: ${_this.name}, portionDescription: ${_this.portionDescription}, quantity: ${_this.quantity}, unit: ${_this.unit}, reference: ${_this.reference}, nutrients: ${_this.nutrients}, wasModified: ${_this.wasModified})';
}


}

/// @nodoc
abstract mixin class $MealItemCopyWith<$Res>  {
  factory $MealItemCopyWith(MealItem value, $Res Function(MealItem) _then) = _$MealItemCopyWithImpl;
@useResult
$Res call({
 String id, String? recognisedItemId, String name, String? portionDescription, double? quantity, PortionUnit? unit, FoodReference? reference, Nutrients? nutrients, bool wasModified
});


$FoodReferenceCopyWith<$Res>? get reference;$NutrientsCopyWith<$Res>? get nutrients;

}
/// @nodoc
class _$MealItemCopyWithImpl<$Res>
    implements $MealItemCopyWith<$Res> {
  _$MealItemCopyWithImpl(this._self, this._then);

  final MealItem _self;
  final $Res Function(MealItem) _then;

/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recognisedItemId = freezed,Object? name = null,Object? portionDescription = freezed,Object? quantity = freezed,Object? unit = freezed,Object? reference = freezed,Object? nutrients = freezed,Object? wasModified = null,}) {
  return _then(MealItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,portionDescription: freezed == portionDescription ? _self.portionDescription : portionDescription // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as FoodReference?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Nutrients?,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodReferenceCopyWith<$Res>? get reference {
    if (_self.reference == null) {
    return null;
  }

  return $FoodReferenceCopyWith<$Res>(_self.reference!, (value) {
    return _then(_self.copyWith(reference: value));
  });
}/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $NutrientsCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealItem].
extension MealItemPatterns on MealItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealItem value)  $default,){
final _that = this;
switch (_that) {
case _MealItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealItem value)?  $default,){
final _that = this;
switch (_that) {
case _MealItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? recognisedItemId,  String name,  String? portionDescription,  double? quantity,  PortionUnit? unit,  FoodReference? reference,  Nutrients? nutrients,  bool wasModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealItem() when $default != null:
return $default(_that.id,_that.recognisedItemId,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.reference,_that.nutrients,_that.wasModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? recognisedItemId,  String name,  String? portionDescription,  double? quantity,  PortionUnit? unit,  FoodReference? reference,  Nutrients? nutrients,  bool wasModified)  $default,) {final _that = this;
switch (_that) {
case _MealItem():
return $default(_that.id,_that.recognisedItemId,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.reference,_that.nutrients,_that.wasModified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? recognisedItemId,  String name,  String? portionDescription,  double? quantity,  PortionUnit? unit,  FoodReference? reference,  Nutrients? nutrients,  bool wasModified)?  $default,) {final _that = this;
switch (_that) {
case _MealItem() when $default != null:
return $default(_that.id,_that.recognisedItemId,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.reference,_that.nutrients,_that.wasModified);case _:
  return null;

}
}

}

/// @nodoc


class _MealItem extends MealItem {
  const _MealItem({required this.id, this.recognisedItemId, required this.name, this.portionDescription, this.quantity, this.unit, this.reference, this.nutrients, this.wasModified = false}): super._();
  

@override final  String id;
/// The recognised item this is (or corrects); null for a food the user
/// added.
@override final  String? recognisedItemId;
@override final  String name;
/// The AI's wording, e.g. "1 plate". Null once the portion is edited.
@override final  String? portionDescription;
/// Null when the AI couldn't estimate the amount of an unmatched food.
@override final  double? quantity;
@override final  PortionUnit? unit;
/// Null when the food isn't in the reference data.
@override final  FoodReference? reference;
/// Null without reference data: no calories are made up.
@override final  Nutrients? nutrients;
@override@JsonKey() final  bool wasModified;

/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealItemCopyWith<_MealItem> get copyWith => __$MealItemCopyWithImpl<_MealItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealItem&&(identical(other.id, id) || other.id == id)&&(identical(other.recognisedItemId, recognisedItemId) || other.recognisedItemId == recognisedItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.portionDescription, portionDescription) || other.portionDescription == portionDescription)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.wasModified, wasModified) || other.wasModified == wasModified));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recognisedItemId,name,portionDescription,quantity,unit,reference,nutrients,wasModified);
}

@override
String toString() {
    return 'MealItem(id: $id, recognisedItemId: $recognisedItemId, name: $name, portionDescription: $portionDescription, quantity: $quantity, unit: $unit, reference: $reference, nutrients: $nutrients, wasModified: $wasModified)';
}


}

/// @nodoc
abstract mixin class _$MealItemCopyWith<$Res> implements $MealItemCopyWith<$Res> {
  factory _$MealItemCopyWith(_MealItem value, $Res Function(_MealItem) _then) = __$MealItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String? recognisedItemId, String name, String? portionDescription, double? quantity, PortionUnit? unit, FoodReference? reference, Nutrients? nutrients, bool wasModified
});


@override $FoodReferenceCopyWith<$Res>? get reference;@override $NutrientsCopyWith<$Res>? get nutrients;

}
/// @nodoc
class __$MealItemCopyWithImpl<$Res>
    implements _$MealItemCopyWith<$Res> {
  __$MealItemCopyWithImpl(this._self, this._then);

  final _MealItem _self;
  final $Res Function(_MealItem) _then;

/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recognisedItemId = freezed,Object? name = null,Object? portionDescription = freezed,Object? quantity = freezed,Object? unit = freezed,Object? reference = freezed,Object? nutrients = freezed,Object? wasModified = null,}) {
  return _then(_MealItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recognisedItemId: freezed == recognisedItemId ? _self.recognisedItemId : recognisedItemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,portionDescription: freezed == portionDescription ? _self.portionDescription : portionDescription // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as FoodReference?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Nutrients?,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodReferenceCopyWith<$Res>? get reference {
    if (_self.reference == null) {
    return null;
  }

  return $FoodReferenceCopyWith<$Res>(_self.reference!, (value) {
    return _then(_self.copyWith(reference: value));
  });
}/// Create a copy of MealItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $NutrientsCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}

/// @nodoc
mixin _$MealRecord {

 String get id; String get analysisId; DateTime get eatenAt; MealStatus get status; bool get validatedByUser; Nutrients get totals; List<MealItem> get items;/// A signed link to the photo. Null with local photo storage on the
/// backend, or when its photo store couldn't be reached.
 String? get imageUrl;
/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealRecordCopyWith<MealRecord> get copyWith => _$MealRecordCopyWithImpl<MealRecord>(this as MealRecord, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MealRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealRecord&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.analysisId, _this.analysisId) || other.analysisId == _this.analysisId)&&(identical(other.eatenAt, _this.eatenAt) || other.eatenAt == _this.eatenAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.validatedByUser, _this.validatedByUser) || other.validatedByUser == _this.validatedByUser)&&(identical(other.totals, _this.totals) || other.totals == _this.totals)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}


@override
int get hashCode {
  final _this = this as MealRecord;
  return Object.hash(runtimeType,_this.id,_this.analysisId,_this.eatenAt,_this.status,_this.validatedByUser,_this.totals,const DeepCollectionEquality().hash(_this.items),_this.imageUrl);
}

@override
String toString() {
  final _this = this as MealRecord;
  return 'MealRecord(id: ${_this.id}, analysisId: ${_this.analysisId}, eatenAt: ${_this.eatenAt}, status: ${_this.status}, validatedByUser: ${_this.validatedByUser}, totals: ${_this.totals}, items: ${_this.items}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $MealRecordCopyWith<$Res>  {
  factory $MealRecordCopyWith(MealRecord value, $Res Function(MealRecord) _then) = _$MealRecordCopyWithImpl;
@useResult
$Res call({
 String id, String analysisId, DateTime eatenAt, MealStatus status, bool validatedByUser, Nutrients totals, List<MealItem> items, String? imageUrl
});


$NutrientsCopyWith<$Res> get totals;

}
/// @nodoc
class _$MealRecordCopyWithImpl<$Res>
    implements $MealRecordCopyWith<$Res> {
  _$MealRecordCopyWithImpl(this._self, this._then);

  final MealRecord _self;
  final $Res Function(MealRecord) _then;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? analysisId = null,Object? eatenAt = null,Object? status = null,Object? validatedByUser = null,Object? totals = null,Object? items = null,Object? imageUrl = freezed,}) {
  return _then(MealRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,analysisId: null == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String,eatenAt: null == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MealStatus,validatedByUser: null == validatedByUser ? _self.validatedByUser : validatedByUser // ignore: cast_nullable_to_non_nullable
as bool,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res> get totals {
  
  return $NutrientsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String analysisId,  DateTime eatenAt,  MealStatus status,  bool validatedByUser,  Nutrients totals,  List<MealItem> items,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
return $default(_that.id,_that.analysisId,_that.eatenAt,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String analysisId,  DateTime eatenAt,  MealStatus status,  bool validatedByUser,  Nutrients totals,  List<MealItem> items,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _MealRecord():
return $default(_that.id,_that.analysisId,_that.eatenAt,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String analysisId,  DateTime eatenAt,  MealStatus status,  bool validatedByUser,  Nutrients totals,  List<MealItem> items,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _MealRecord() when $default != null:
return $default(_that.id,_that.analysisId,_that.eatenAt,_that.status,_that.validatedByUser,_that.totals,_that.items,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _MealRecord extends MealRecord {
  const _MealRecord({required this.id, required this.analysisId, required this.eatenAt, this.status = MealStatus.saved, this.validatedByUser = false, this.totals = Nutrients.zero,  List<MealItem> items = const [], this.imageUrl}): _items = items,super._();
  

@override final  String id;
@override final  String analysisId;
@override final  DateTime eatenAt;
@override@JsonKey() final  MealStatus status;
@override@JsonKey() final  bool validatedByUser;
@override@JsonKey() final  Nutrients totals;
 final  List<MealItem> _items;
@override@JsonKey() List<MealItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// A signed link to the photo. Null with local photo storage on the
/// backend, or when its photo store couldn't be reached.
@override final  String? imageUrl;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealRecordCopyWith<_MealRecord> get copyWith => __$MealRecordCopyWithImpl<_MealRecord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.analysisId, analysisId) || other.analysisId == analysisId)&&(identical(other.eatenAt, eatenAt) || other.eatenAt == eatenAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.validatedByUser, validatedByUser) || other.validatedByUser == validatedByUser)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,analysisId,eatenAt,status,validatedByUser,totals,const DeepCollectionEquality().hash(_items),imageUrl);
}

@override
String toString() {
    return 'MealRecord(id: $id, analysisId: $analysisId, eatenAt: $eatenAt, status: $status, validatedByUser: $validatedByUser, totals: $totals, items: $items, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$MealRecordCopyWith<$Res> implements $MealRecordCopyWith<$Res> {
  factory _$MealRecordCopyWith(_MealRecord value, $Res Function(_MealRecord) _then) = __$MealRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String analysisId, DateTime eatenAt, MealStatus status, bool validatedByUser, Nutrients totals, List<MealItem> items, String? imageUrl
});


@override $NutrientsCopyWith<$Res> get totals;

}
/// @nodoc
class __$MealRecordCopyWithImpl<$Res>
    implements _$MealRecordCopyWith<$Res> {
  __$MealRecordCopyWithImpl(this._self, this._then);

  final _MealRecord _self;
  final $Res Function(_MealRecord) _then;

/// Create a copy of MealRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? analysisId = null,Object? eatenAt = null,Object? status = null,Object? validatedByUser = null,Object? totals = null,Object? items = null,Object? imageUrl = freezed,}) {
  return _then(_MealRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,analysisId: null == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String,eatenAt: null == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MealStatus,validatedByUser: null == validatedByUser ? _self.validatedByUser : validatedByUser // ignore: cast_nullable_to_non_nullable
as bool,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Nutrients,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MealRecord
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
