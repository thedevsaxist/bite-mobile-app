// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditItemState {

 String get name; double get quantity; PortionUnit get unit;/// The reference food the nutrients come from; null when unmatched.
 FoodReference? get reference;/// [reference]'s values, loaded for the estimate preview.
 NutritionFood? get food;/// Reference foods matching what the user typed.
 List<NutritionFood> get suggestions;/// The nutrients the item had when the sheet opened, for scaling.
 Nutrients? get originalNutrients; double? get originalQuantity; PortionUnit? get originalUnit;
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditItemStateCopyWith<EditItemState> get copyWith => _$EditItemStateCopyWithImpl<EditItemState>(this as EditItemState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EditItemState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemState&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.food, _this.food) || other.food == _this.food)&&const DeepCollectionEquality().equals(other.suggestions, _this.suggestions)&&(identical(other.originalNutrients, _this.originalNutrients) || other.originalNutrients == _this.originalNutrients)&&(identical(other.originalQuantity, _this.originalQuantity) || other.originalQuantity == _this.originalQuantity)&&(identical(other.originalUnit, _this.originalUnit) || other.originalUnit == _this.originalUnit));
}


@override
int get hashCode {
  final _this = this as EditItemState;
  return Object.hash(runtimeType,_this.name,_this.quantity,_this.unit,_this.reference,_this.food,const DeepCollectionEquality().hash(_this.suggestions),_this.originalNutrients,_this.originalQuantity,_this.originalUnit);
}

@override
String toString() {
  final _this = this as EditItemState;
  return 'EditItemState(name: ${_this.name}, quantity: ${_this.quantity}, unit: ${_this.unit}, reference: ${_this.reference}, food: ${_this.food}, suggestions: ${_this.suggestions}, originalNutrients: ${_this.originalNutrients}, originalQuantity: ${_this.originalQuantity}, originalUnit: ${_this.originalUnit})';
}


}

/// @nodoc
abstract mixin class $EditItemStateCopyWith<$Res>  {
  factory $EditItemStateCopyWith(EditItemState value, $Res Function(EditItemState) _then) = _$EditItemStateCopyWithImpl;
@useResult
$Res call({
 String name, double quantity, PortionUnit unit, FoodReference? reference, NutritionFood? food, List<NutritionFood> suggestions, Nutrients? originalNutrients, double? originalQuantity, PortionUnit? originalUnit
});


$FoodReferenceCopyWith<$Res>? get reference;$NutritionFoodCopyWith<$Res>? get food;$NutrientsCopyWith<$Res>? get originalNutrients;

}
/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._self, this._then);

  final EditItemState _self;
  final $Res Function(EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? reference = freezed,Object? food = freezed,Object? suggestions = null,Object? originalNutrients = freezed,Object? originalQuantity = freezed,Object? originalUnit = freezed,}) {
  return _then(EditItemState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as FoodReference?,food: freezed == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as NutritionFood?,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<NutritionFood>,originalNutrients: freezed == originalNutrients ? _self.originalNutrients : originalNutrients // ignore: cast_nullable_to_non_nullable
as Nutrients?,originalQuantity: freezed == originalQuantity ? _self.originalQuantity : originalQuantity // ignore: cast_nullable_to_non_nullable
as double?,originalUnit: freezed == originalUnit ? _self.originalUnit : originalUnit // ignore: cast_nullable_to_non_nullable
as PortionUnit?,
  ));
}
/// Create a copy of EditItemState
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
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionFoodCopyWith<$Res>? get food {
    if (_self.food == null) {
    return null;
  }

  return $NutritionFoodCopyWith<$Res>(_self.food!, (value) {
    return _then(_self.copyWith(food: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res>? get originalNutrients {
    if (_self.originalNutrients == null) {
    return null;
  }

  return $NutrientsCopyWith<$Res>(_self.originalNutrients!, (value) {
    return _then(_self.copyWith(originalNutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditItemState].
extension EditItemStatePatterns on EditItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditItemState value)  $default,){
final _that = this;
switch (_that) {
case _EditItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditItemState value)?  $default,){
final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double quantity,  PortionUnit unit,  FoodReference? reference,  NutritionFood? food,  List<NutritionFood> suggestions,  Nutrients? originalNutrients,  double? originalQuantity,  PortionUnit? originalUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.reference,_that.food,_that.suggestions,_that.originalNutrients,_that.originalQuantity,_that.originalUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double quantity,  PortionUnit unit,  FoodReference? reference,  NutritionFood? food,  List<NutritionFood> suggestions,  Nutrients? originalNutrients,  double? originalQuantity,  PortionUnit? originalUnit)  $default,) {final _that = this;
switch (_that) {
case _EditItemState():
return $default(_that.name,_that.quantity,_that.unit,_that.reference,_that.food,_that.suggestions,_that.originalNutrients,_that.originalQuantity,_that.originalUnit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double quantity,  PortionUnit unit,  FoodReference? reference,  NutritionFood? food,  List<NutritionFood> suggestions,  Nutrients? originalNutrients,  double? originalQuantity,  PortionUnit? originalUnit)?  $default,) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.reference,_that.food,_that.suggestions,_that.originalNutrients,_that.originalQuantity,_that.originalUnit);case _:
  return null;

}
}

}

/// @nodoc


class _EditItemState extends EditItemState {
  const _EditItemState({required this.name, required this.quantity, required this.unit, this.reference, this.food,  List<NutritionFood> suggestions = const [], this.originalNutrients, this.originalQuantity, this.originalUnit}): _suggestions = suggestions,super._();
  

@override final  String name;
@override final  double quantity;
@override final  PortionUnit unit;
/// The reference food the nutrients come from; null when unmatched.
@override final  FoodReference? reference;
/// [reference]'s values, loaded for the estimate preview.
@override final  NutritionFood? food;
/// Reference foods matching what the user typed.
 final  List<NutritionFood> _suggestions;
/// Reference foods matching what the user typed.
@override@JsonKey() List<NutritionFood> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

/// The nutrients the item had when the sheet opened, for scaling.
@override final  Nutrients? originalNutrients;
@override final  double? originalQuantity;
@override final  PortionUnit? originalUnit;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditItemStateCopyWith<_EditItemState> get copyWith => __$EditItemStateCopyWithImpl<_EditItemState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditItemState&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.food, food) || other.food == food)&&const DeepCollectionEquality().equals(other.suggestions, _suggestions)&&(identical(other.originalNutrients, originalNutrients) || other.originalNutrients == originalNutrients)&&(identical(other.originalQuantity, originalQuantity) || other.originalQuantity == originalQuantity)&&(identical(other.originalUnit, originalUnit) || other.originalUnit == originalUnit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,quantity,unit,reference,food,const DeepCollectionEquality().hash(_suggestions),originalNutrients,originalQuantity,originalUnit);
}

@override
String toString() {
    return 'EditItemState(name: $name, quantity: $quantity, unit: $unit, reference: $reference, food: $food, suggestions: $suggestions, originalNutrients: $originalNutrients, originalQuantity: $originalQuantity, originalUnit: $originalUnit)';
}


}

/// @nodoc
abstract mixin class _$EditItemStateCopyWith<$Res> implements $EditItemStateCopyWith<$Res> {
  factory _$EditItemStateCopyWith(_EditItemState value, $Res Function(_EditItemState) _then) = __$EditItemStateCopyWithImpl;
@override @useResult
$Res call({
 String name, double quantity, PortionUnit unit, FoodReference? reference, NutritionFood? food, List<NutritionFood> suggestions, Nutrients? originalNutrients, double? originalQuantity, PortionUnit? originalUnit
});


@override $FoodReferenceCopyWith<$Res>? get reference;@override $NutritionFoodCopyWith<$Res>? get food;@override $NutrientsCopyWith<$Res>? get originalNutrients;

}
/// @nodoc
class __$EditItemStateCopyWithImpl<$Res>
    implements _$EditItemStateCopyWith<$Res> {
  __$EditItemStateCopyWithImpl(this._self, this._then);

  final _EditItemState _self;
  final $Res Function(_EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? reference = freezed,Object? food = freezed,Object? suggestions = null,Object? originalNutrients = freezed,Object? originalQuantity = freezed,Object? originalUnit = freezed,}) {
  return _then(_EditItemState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as FoodReference?,food: freezed == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as NutritionFood?,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<NutritionFood>,originalNutrients: freezed == originalNutrients ? _self.originalNutrients : originalNutrients // ignore: cast_nullable_to_non_nullable
as Nutrients?,originalQuantity: freezed == originalQuantity ? _self.originalQuantity : originalQuantity // ignore: cast_nullable_to_non_nullable
as double?,originalUnit: freezed == originalUnit ? _self.originalUnit : originalUnit // ignore: cast_nullable_to_non_nullable
as PortionUnit?,
  ));
}

/// Create a copy of EditItemState
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
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionFoodCopyWith<$Res>? get food {
    if (_self.food == null) {
    return null;
  }

  return $NutritionFoodCopyWith<$Res>(_self.food!, (value) {
    return _then(_self.copyWith(food: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsCopyWith<$Res>? get originalNutrients {
    if (_self.originalNutrients == null) {
    return null;
  }

  return $NutrientsCopyWith<$Res>(_self.originalNutrients!, (value) {
    return _then(_self.copyWith(originalNutrients: value));
  });
}
}

// dart format on
