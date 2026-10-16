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
mixin _$RecognisedFoodItem {

 String get id; String get name; String get portionDescription; double get quantity; PortionUnit get unit; int get calories; int get proteinGrams; int get carbsGrams; int get fatGrams; bool get wasModified;
/// Create a copy of RecognisedFoodItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecognisedFoodItemCopyWith<RecognisedFoodItem> get copyWith => _$RecognisedFoodItemCopyWithImpl<RecognisedFoodItem>(this as RecognisedFoodItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecognisedFoodItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecognisedFoodItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.portionDescription, _this.portionDescription) || other.portionDescription == _this.portionDescription)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.proteinGrams, _this.proteinGrams) || other.proteinGrams == _this.proteinGrams)&&(identical(other.carbsGrams, _this.carbsGrams) || other.carbsGrams == _this.carbsGrams)&&(identical(other.fatGrams, _this.fatGrams) || other.fatGrams == _this.fatGrams)&&(identical(other.wasModified, _this.wasModified) || other.wasModified == _this.wasModified));
}


@override
int get hashCode {
  final _this = this as RecognisedFoodItem;
  return Object.hash(runtimeType,_this.id,_this.name,_this.portionDescription,_this.quantity,_this.unit,_this.calories,_this.proteinGrams,_this.carbsGrams,_this.fatGrams,_this.wasModified);
}

@override
String toString() {
  final _this = this as RecognisedFoodItem;
  return 'RecognisedFoodItem(id: ${_this.id}, name: ${_this.name}, portionDescription: ${_this.portionDescription}, quantity: ${_this.quantity}, unit: ${_this.unit}, calories: ${_this.calories}, proteinGrams: ${_this.proteinGrams}, carbsGrams: ${_this.carbsGrams}, fatGrams: ${_this.fatGrams}, wasModified: ${_this.wasModified})';
}


}

/// @nodoc
abstract mixin class $RecognisedFoodItemCopyWith<$Res>  {
  factory $RecognisedFoodItemCopyWith(RecognisedFoodItem value, $Res Function(RecognisedFoodItem) _then) = _$RecognisedFoodItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String portionDescription, double quantity, PortionUnit unit, int calories, int proteinGrams, int carbsGrams, int fatGrams, bool wasModified
});




}
/// @nodoc
class _$RecognisedFoodItemCopyWithImpl<$Res>
    implements $RecognisedFoodItemCopyWith<$Res> {
  _$RecognisedFoodItemCopyWithImpl(this._self, this._then);

  final RecognisedFoodItem _self;
  final $Res Function(RecognisedFoodItem) _then;

/// Create a copy of RecognisedFoodItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? portionDescription = null,Object? quantity = null,Object? unit = null,Object? calories = null,Object? proteinGrams = null,Object? carbsGrams = null,Object? fatGrams = null,Object? wasModified = null,}) {
  return _then(RecognisedFoodItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,portionDescription: null == portionDescription ? _self.portionDescription : portionDescription // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,proteinGrams: null == proteinGrams ? _self.proteinGrams : proteinGrams // ignore: cast_nullable_to_non_nullable
as int,carbsGrams: null == carbsGrams ? _self.carbsGrams : carbsGrams // ignore: cast_nullable_to_non_nullable
as int,fatGrams: null == fatGrams ? _self.fatGrams : fatGrams // ignore: cast_nullable_to_non_nullable
as int,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecognisedFoodItem].
extension RecognisedFoodItemPatterns on RecognisedFoodItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecognisedFoodItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecognisedFoodItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecognisedFoodItem value)  $default,){
final _that = this;
switch (_that) {
case _RecognisedFoodItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecognisedFoodItem value)?  $default,){
final _that = this;
switch (_that) {
case _RecognisedFoodItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String portionDescription,  double quantity,  PortionUnit unit,  int calories,  int proteinGrams,  int carbsGrams,  int fatGrams,  bool wasModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecognisedFoodItem() when $default != null:
return $default(_that.id,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.calories,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.wasModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String portionDescription,  double quantity,  PortionUnit unit,  int calories,  int proteinGrams,  int carbsGrams,  int fatGrams,  bool wasModified)  $default,) {final _that = this;
switch (_that) {
case _RecognisedFoodItem():
return $default(_that.id,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.calories,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.wasModified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String portionDescription,  double quantity,  PortionUnit unit,  int calories,  int proteinGrams,  int carbsGrams,  int fatGrams,  bool wasModified)?  $default,) {final _that = this;
switch (_that) {
case _RecognisedFoodItem() when $default != null:
return $default(_that.id,_that.name,_that.portionDescription,_that.quantity,_that.unit,_that.calories,_that.proteinGrams,_that.carbsGrams,_that.fatGrams,_that.wasModified);case _:
  return null;

}
}

}

/// @nodoc


class _RecognisedFoodItem implements RecognisedFoodItem {
  const _RecognisedFoodItem({required this.id, required this.name, required this.portionDescription, required this.quantity, required this.unit, required this.calories, required this.proteinGrams, required this.carbsGrams, required this.fatGrams, this.wasModified = false});
  

@override final  String id;
@override final  String name;
@override final  String portionDescription;
@override final  double quantity;
@override final  PortionUnit unit;
@override final  int calories;
@override final  int proteinGrams;
@override final  int carbsGrams;
@override final  int fatGrams;
@override@JsonKey() final  bool wasModified;

/// Create a copy of RecognisedFoodItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecognisedFoodItemCopyWith<_RecognisedFoodItem> get copyWith => __$RecognisedFoodItemCopyWithImpl<_RecognisedFoodItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecognisedFoodItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.portionDescription, portionDescription) || other.portionDescription == portionDescription)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.proteinGrams, proteinGrams) || other.proteinGrams == proteinGrams)&&(identical(other.carbsGrams, carbsGrams) || other.carbsGrams == carbsGrams)&&(identical(other.fatGrams, fatGrams) || other.fatGrams == fatGrams)&&(identical(other.wasModified, wasModified) || other.wasModified == wasModified));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,portionDescription,quantity,unit,calories,proteinGrams,carbsGrams,fatGrams,wasModified);
}

@override
String toString() {
    return 'RecognisedFoodItem(id: $id, name: $name, portionDescription: $portionDescription, quantity: $quantity, unit: $unit, calories: $calories, proteinGrams: $proteinGrams, carbsGrams: $carbsGrams, fatGrams: $fatGrams, wasModified: $wasModified)';
}


}

/// @nodoc
abstract mixin class _$RecognisedFoodItemCopyWith<$Res> implements $RecognisedFoodItemCopyWith<$Res> {
  factory _$RecognisedFoodItemCopyWith(_RecognisedFoodItem value, $Res Function(_RecognisedFoodItem) _then) = __$RecognisedFoodItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String portionDescription, double quantity, PortionUnit unit, int calories, int proteinGrams, int carbsGrams, int fatGrams, bool wasModified
});




}
/// @nodoc
class __$RecognisedFoodItemCopyWithImpl<$Res>
    implements _$RecognisedFoodItemCopyWith<$Res> {
  __$RecognisedFoodItemCopyWithImpl(this._self, this._then);

  final _RecognisedFoodItem _self;
  final $Res Function(_RecognisedFoodItem) _then;

/// Create a copy of RecognisedFoodItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? portionDescription = null,Object? quantity = null,Object? unit = null,Object? calories = null,Object? proteinGrams = null,Object? carbsGrams = null,Object? fatGrams = null,Object? wasModified = null,}) {
  return _then(_RecognisedFoodItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,portionDescription: null == portionDescription ? _self.portionDescription : portionDescription // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as PortionUnit,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,proteinGrams: null == proteinGrams ? _self.proteinGrams : proteinGrams // ignore: cast_nullable_to_non_nullable
as int,carbsGrams: null == carbsGrams ? _self.carbsGrams : carbsGrams // ignore: cast_nullable_to_non_nullable
as int,fatGrams: null == fatGrams ? _self.fatGrams : fatGrams // ignore: cast_nullable_to_non_nullable
as int,wasModified: null == wasModified ? _self.wasModified : wasModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$FoodAnalysis {

 String get id; List<RecognisedFoodItem> get items;
/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisCopyWith<FoodAnalysis> get copyWith => _$FoodAnalysisCopyWithImpl<FoodAnalysis>(this as FoodAnalysis, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FoodAnalysis;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysis&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.items, _this.items));
}


@override
int get hashCode {
  final _this = this as FoodAnalysis;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as FoodAnalysis;
  return 'FoodAnalysis(id: ${_this.id}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisCopyWith<$Res>  {
  factory $FoodAnalysisCopyWith(FoodAnalysis value, $Res Function(FoodAnalysis) _then) = _$FoodAnalysisCopyWithImpl;
@useResult
$Res call({
 String id, List<RecognisedFoodItem> items
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? items = null,}) {
  return _then(FoodAnalysis(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<RecognisedFoodItem>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<RecognisedFoodItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
return $default(_that.id,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<RecognisedFoodItem> items)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysis():
return $default(_that.id,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<RecognisedFoodItem> items)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysis() when $default != null:
return $default(_that.id,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _FoodAnalysis extends FoodAnalysis {
  const _FoodAnalysis({required this.id, required  List<RecognisedFoodItem> items}): _items = items,super._();
  

@override final  String id;
 final  List<RecognisedFoodItem> _items;
@override List<RecognisedFoodItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FoodAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisCopyWith<_FoodAnalysis> get copyWith => __$FoodAnalysisCopyWithImpl<_FoodAnalysis>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysis&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.items, _items));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'FoodAnalysis(id: $id, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisCopyWith<$Res> implements $FoodAnalysisCopyWith<$Res> {
  factory _$FoodAnalysisCopyWith(_FoodAnalysis value, $Res Function(_FoodAnalysis) _then) = __$FoodAnalysisCopyWithImpl;
@override @useResult
$Res call({
 String id, List<RecognisedFoodItem> items
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? items = null,}) {
  return _then(_FoodAnalysis(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<RecognisedFoodItem>,
  ));
}


}

// dart format on
