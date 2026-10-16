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

 String get name; double get quantity; PortionUnit get unit; double get caloriesPerUnit;
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditItemStateCopyWith<EditItemState> get copyWith => _$EditItemStateCopyWithImpl<EditItemState>(this as EditItemState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EditItemState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemState&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.caloriesPerUnit, _this.caloriesPerUnit) || other.caloriesPerUnit == _this.caloriesPerUnit));
}


@override
int get hashCode {
  final _this = this as EditItemState;
  return Object.hash(runtimeType,_this.name,_this.quantity,_this.unit,_this.caloriesPerUnit);
}

@override
String toString() {
  final _this = this as EditItemState;
  return 'EditItemState(name: ${_this.name}, quantity: ${_this.quantity}, unit: ${_this.unit}, caloriesPerUnit: ${_this.caloriesPerUnit})';
}


}

/// @nodoc
abstract mixin class $EditItemStateCopyWith<$Res>  {
  factory $EditItemStateCopyWith(EditItemState value, $Res Function(EditItemState) _then) = _$EditItemStateCopyWithImpl;
@useResult
$Res call({
 String name, double quantity, PortionUnit unit, double caloriesPerUnit
});




}
/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._self, this._then);

  final EditItemState _self;
  final $Res Function(EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? caloriesPerUnit = null,}) {
  return _then(EditItemState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,caloriesPerUnit: null == caloriesPerUnit ? _self.caloriesPerUnit : caloriesPerUnit // ignore: cast_nullable_to_non_nullable
as double,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double quantity,  PortionUnit unit,  double caloriesPerUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.caloriesPerUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double quantity,  PortionUnit unit,  double caloriesPerUnit)  $default,) {final _that = this;
switch (_that) {
case _EditItemState():
return $default(_that.name,_that.quantity,_that.unit,_that.caloriesPerUnit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double quantity,  PortionUnit unit,  double caloriesPerUnit)?  $default,) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.caloriesPerUnit);case _:
  return null;

}
}

}

/// @nodoc


class _EditItemState extends EditItemState {
  const _EditItemState({required this.name, required this.quantity, required this.unit, required this.caloriesPerUnit}): super._();
  

@override final  String name;
@override final  double quantity;
@override final  PortionUnit unit;
@override final  double caloriesPerUnit;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditItemStateCopyWith<_EditItemState> get copyWith => __$EditItemStateCopyWithImpl<_EditItemState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditItemState&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.caloriesPerUnit, caloriesPerUnit) || other.caloriesPerUnit == caloriesPerUnit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,quantity,unit,caloriesPerUnit);
}

@override
String toString() {
    return 'EditItemState(name: $name, quantity: $quantity, unit: $unit, caloriesPerUnit: $caloriesPerUnit)';
}


}

/// @nodoc
abstract mixin class _$EditItemStateCopyWith<$Res> implements $EditItemStateCopyWith<$Res> {
  factory _$EditItemStateCopyWith(_EditItemState value, $Res Function(_EditItemState) _then) = __$EditItemStateCopyWithImpl;
@override @useResult
$Res call({
 String name, double quantity, PortionUnit unit, double caloriesPerUnit
});




}
/// @nodoc
class __$EditItemStateCopyWithImpl<$Res>
    implements _$EditItemStateCopyWith<$Res> {
  __$EditItemStateCopyWithImpl(this._self, this._then);

  final _EditItemState _self;
  final $Res Function(_EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? caloriesPerUnit = null,}) {
  return _then(_EditItemState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,caloriesPerUnit: null == caloriesPerUnit ? _self.caloriesPerUnit : caloriesPerUnit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
