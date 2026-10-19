// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisItemDto {

 String get id; String get name; FoodReferenceDto? get nutritionReference; PortionDto get portion; double? get confidence; NutrientsDto? get nutrients;
/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisItemDtoCopyWith<AnalysisItemDto> get copyWith => _$AnalysisItemDtoCopyWithImpl<AnalysisItemDto>(this as AnalysisItemDto, _$identity);

  /// Serializes this AnalysisItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AnalysisItemDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisItemDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.nutritionReference, _this.nutritionReference) || other.nutritionReference == _this.nutritionReference)&&(identical(other.portion, _this.portion) || other.portion == _this.portion)&&(identical(other.confidence, _this.confidence) || other.confidence == _this.confidence)&&(identical(other.nutrients, _this.nutrients) || other.nutrients == _this.nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AnalysisItemDto;
  return Object.hash(runtimeType,_this.id,_this.name,_this.nutritionReference,_this.portion,_this.confidence,_this.nutrients);
}

@override
String toString() {
  final _this = this as AnalysisItemDto;
  return 'AnalysisItemDto(id: ${_this.id}, name: ${_this.name}, nutritionReference: ${_this.nutritionReference}, portion: ${_this.portion}, confidence: ${_this.confidence}, nutrients: ${_this.nutrients})';
}


}

/// @nodoc
abstract mixin class $AnalysisItemDtoCopyWith<$Res>  {
  factory $AnalysisItemDtoCopyWith(AnalysisItemDto value, $Res Function(AnalysisItemDto) _then) = _$AnalysisItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, FoodReferenceDto? nutritionReference, PortionDto portion, double? confidence, NutrientsDto? nutrients
});


$FoodReferenceDtoCopyWith<$Res>? get nutritionReference;$PortionDtoCopyWith<$Res> get portion;$NutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class _$AnalysisItemDtoCopyWithImpl<$Res>
    implements $AnalysisItemDtoCopyWith<$Res> {
  _$AnalysisItemDtoCopyWithImpl(this._self, this._then);

  final AnalysisItemDto _self;
  final $Res Function(AnalysisItemDto) _then;

/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nutritionReference = freezed,Object? portion = null,Object? confidence = freezed,Object? nutrients = freezed,}) {
  return _then(AnalysisItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutritionReference: freezed == nutritionReference ? _self.nutritionReference : nutritionReference // ignore: cast_nullable_to_non_nullable
as FoodReferenceDto?,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as PortionDto,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsDto?,
  ));
}
/// Create a copy of AnalysisItemDto
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
}/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortionDtoCopyWith<$Res> get portion {
  
  return $PortionDtoCopyWith<$Res>(_self.portion, (value) {
    return _then(_self.copyWith(portion: value));
  });
}/// Create a copy of AnalysisItemDto
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


/// Adds pattern-matching-related methods to [AnalysisItemDto].
extension AnalysisItemDtoPatterns on AnalysisItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  FoodReferenceDto? nutritionReference,  PortionDto portion,  double? confidence,  NutrientsDto? nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisItemDto() when $default != null:
return $default(_that.id,_that.name,_that.nutritionReference,_that.portion,_that.confidence,_that.nutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  FoodReferenceDto? nutritionReference,  PortionDto portion,  double? confidence,  NutrientsDto? nutrients)  $default,) {final _that = this;
switch (_that) {
case _AnalysisItemDto():
return $default(_that.id,_that.name,_that.nutritionReference,_that.portion,_that.confidence,_that.nutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  FoodReferenceDto? nutritionReference,  PortionDto portion,  double? confidence,  NutrientsDto? nutrients)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisItemDto() when $default != null:
return $default(_that.id,_that.name,_that.nutritionReference,_that.portion,_that.confidence,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisItemDto extends AnalysisItemDto {
  const _AnalysisItemDto({required this.id, required this.name, this.nutritionReference, this.portion = const PortionDto(), this.confidence, this.nutrients}): super._();
  factory _AnalysisItemDto.fromJson(Map<String, dynamic> json) => _$AnalysisItemDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  FoodReferenceDto? nutritionReference;
@override@JsonKey() final  PortionDto portion;
@override final  double? confidence;
@override final  NutrientsDto? nutrients;

/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisItemDtoCopyWith<_AnalysisItemDto> get copyWith => __$AnalysisItemDtoCopyWithImpl<_AnalysisItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutritionReference, nutritionReference) || other.nutritionReference == nutritionReference)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,nutritionReference,portion,confidence,nutrients);
}

@override
String toString() {
    return 'AnalysisItemDto(id: $id, name: $name, nutritionReference: $nutritionReference, portion: $portion, confidence: $confidence, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$AnalysisItemDtoCopyWith<$Res> implements $AnalysisItemDtoCopyWith<$Res> {
  factory _$AnalysisItemDtoCopyWith(_AnalysisItemDto value, $Res Function(_AnalysisItemDto) _then) = __$AnalysisItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, FoodReferenceDto? nutritionReference, PortionDto portion, double? confidence, NutrientsDto? nutrients
});


@override $FoodReferenceDtoCopyWith<$Res>? get nutritionReference;@override $PortionDtoCopyWith<$Res> get portion;@override $NutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class __$AnalysisItemDtoCopyWithImpl<$Res>
    implements _$AnalysisItemDtoCopyWith<$Res> {
  __$AnalysisItemDtoCopyWithImpl(this._self, this._then);

  final _AnalysisItemDto _self;
  final $Res Function(_AnalysisItemDto) _then;

/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nutritionReference = freezed,Object? portion = null,Object? confidence = freezed,Object? nutrients = freezed,}) {
  return _then(_AnalysisItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutritionReference: freezed == nutritionReference ? _self.nutritionReference : nutritionReference // ignore: cast_nullable_to_non_nullable
as FoodReferenceDto?,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as PortionDto,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsDto?,
  ));
}

/// Create a copy of AnalysisItemDto
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
}/// Create a copy of AnalysisItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortionDtoCopyWith<$Res> get portion {
  
  return $PortionDtoCopyWith<$Res>(_self.portion, (value) {
    return _then(_self.copyWith(portion: value));
  });
}/// Create a copy of AnalysisItemDto
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
mixin _$SavedMealDto {

 String get id;
/// Create a copy of SavedMealDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedMealDtoCopyWith<SavedMealDto> get copyWith => _$SavedMealDtoCopyWithImpl<SavedMealDto>(this as SavedMealDto, _$identity);

  /// Serializes this SavedMealDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SavedMealDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedMealDto&&(identical(other.id, _this.id) || other.id == _this.id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SavedMealDto;
  return Object.hash(runtimeType,_this.id);
}

@override
String toString() {
  final _this = this as SavedMealDto;
  return 'SavedMealDto(id: ${_this.id})';
}


}

/// @nodoc
abstract mixin class $SavedMealDtoCopyWith<$Res>  {
  factory $SavedMealDtoCopyWith(SavedMealDto value, $Res Function(SavedMealDto) _then) = _$SavedMealDtoCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$SavedMealDtoCopyWithImpl<$Res>
    implements $SavedMealDtoCopyWith<$Res> {
  _$SavedMealDtoCopyWithImpl(this._self, this._then);

  final SavedMealDto _self;
  final $Res Function(SavedMealDto) _then;

/// Create a copy of SavedMealDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(SavedMealDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedMealDto].
extension SavedMealDtoPatterns on SavedMealDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedMealDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedMealDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedMealDto value)  $default,){
final _that = this;
switch (_that) {
case _SavedMealDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedMealDto value)?  $default,){
final _that = this;
switch (_that) {
case _SavedMealDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedMealDto() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _SavedMealDto():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _SavedMealDto() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedMealDto implements SavedMealDto {
  const _SavedMealDto({required this.id});
  factory _SavedMealDto.fromJson(Map<String, dynamic> json) => _$SavedMealDtoFromJson(json);

@override final  String id;

/// Create a copy of SavedMealDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedMealDtoCopyWith<_SavedMealDto> get copyWith => __$SavedMealDtoCopyWithImpl<_SavedMealDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedMealDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedMealDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'SavedMealDto(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SavedMealDtoCopyWith<$Res> implements $SavedMealDtoCopyWith<$Res> {
  factory _$SavedMealDtoCopyWith(_SavedMealDto value, $Res Function(_SavedMealDto) _then) = __$SavedMealDtoCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$SavedMealDtoCopyWithImpl<$Res>
    implements _$SavedMealDtoCopyWith<$Res> {
  __$SavedMealDtoCopyWithImpl(this._self, this._then);

  final _SavedMealDto _self;
  final $Res Function(_SavedMealDto) _then;

/// Create a copy of SavedMealDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_SavedMealDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AnalysisDto {

 String get id; List<AnalysisItemDto> get items; String? get imageUrl; SavedMealDto? get meal;/// `{ reason, disputedAt }` once disputed.
 Map<String, dynamic>? get dispute; DateTime get createdAt;
/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<AnalysisDto> get copyWith => _$AnalysisDtoCopyWithImpl<AnalysisDto>(this as AnalysisDto, _$identity);

  /// Serializes this AnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AnalysisDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisDto&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.meal, _this.meal) || other.meal == _this.meal)&&const DeepCollectionEquality().equals(other.dispute, _this.dispute)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AnalysisDto;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.items),_this.imageUrl,_this.meal,const DeepCollectionEquality().hash(_this.dispute),_this.createdAt);
}

@override
String toString() {
  final _this = this as AnalysisDto;
  return 'AnalysisDto(id: ${_this.id}, items: ${_this.items}, imageUrl: ${_this.imageUrl}, meal: ${_this.meal}, dispute: ${_this.dispute}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AnalysisDtoCopyWith<$Res>  {
  factory $AnalysisDtoCopyWith(AnalysisDto value, $Res Function(AnalysisDto) _then) = _$AnalysisDtoCopyWithImpl;
@useResult
$Res call({
 String id, List<AnalysisItemDto> items, String? imageUrl, SavedMealDto? meal, Map<String, dynamic>? dispute, DateTime createdAt
});


$SavedMealDtoCopyWith<$Res>? get meal;

}
/// @nodoc
class _$AnalysisDtoCopyWithImpl<$Res>
    implements $AnalysisDtoCopyWith<$Res> {
  _$AnalysisDtoCopyWithImpl(this._self, this._then);

  final AnalysisDto _self;
  final $Res Function(AnalysisDto) _then;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? items = null,Object? imageUrl = freezed,Object? meal = freezed,Object? dispute = freezed,Object? createdAt = null,}) {
  return _then(AnalysisDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AnalysisItemDto>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,meal: freezed == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as SavedMealDto?,dispute: freezed == dispute ? _self.dispute : dispute // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedMealDtoCopyWith<$Res>? get meal {
    if (_self.meal == null) {
    return null;
  }

  return $SavedMealDtoCopyWith<$Res>(_self.meal!, (value) {
    return _then(_self.copyWith(meal: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisDto].
extension AnalysisDtoPatterns on AnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<AnalysisItemDto> items,  String? imageUrl,  SavedMealDto? meal,  Map<String, dynamic>? dispute,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that.id,_that.items,_that.imageUrl,_that.meal,_that.dispute,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<AnalysisItemDto> items,  String? imageUrl,  SavedMealDto? meal,  Map<String, dynamic>? dispute,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _AnalysisDto():
return $default(_that.id,_that.items,_that.imageUrl,_that.meal,_that.dispute,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<AnalysisItemDto> items,  String? imageUrl,  SavedMealDto? meal,  Map<String, dynamic>? dispute,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that.id,_that.items,_that.imageUrl,_that.meal,_that.dispute,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisDto extends AnalysisDto {
  const _AnalysisDto({required this.id,  List<AnalysisItemDto> items = const [], this.imageUrl, this.meal,  Map<String, dynamic>? dispute, required this.createdAt}): _items = items,_dispute = dispute,super._();
  factory _AnalysisDto.fromJson(Map<String, dynamic> json) => _$AnalysisDtoFromJson(json);

@override final  String id;
 final  List<AnalysisItemDto> _items;
@override@JsonKey() List<AnalysisItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? imageUrl;
@override final  SavedMealDto? meal;
/// `{ reason, disputedAt }` once disputed.
 final  Map<String, dynamic>? _dispute;
/// `{ reason, disputedAt }` once disputed.
@override Map<String, dynamic>? get dispute {
  final value = _dispute;
  if (value == null) return null;
  if (_dispute is EqualUnmodifiableMapView) return _dispute;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  DateTime createdAt;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisDtoCopyWith<_AnalysisDto> get copyWith => __$AnalysisDtoCopyWithImpl<_AnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.meal, meal) || other.meal == meal)&&const DeepCollectionEquality().equals(other.dispute, _dispute)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_items),imageUrl,meal,const DeepCollectionEquality().hash(_dispute),createdAt);
}

@override
String toString() {
    return 'AnalysisDto(id: $id, items: $items, imageUrl: $imageUrl, meal: $meal, dispute: $dispute, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AnalysisDtoCopyWith<$Res> implements $AnalysisDtoCopyWith<$Res> {
  factory _$AnalysisDtoCopyWith(_AnalysisDto value, $Res Function(_AnalysisDto) _then) = __$AnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, List<AnalysisItemDto> items, String? imageUrl, SavedMealDto? meal, Map<String, dynamic>? dispute, DateTime createdAt
});


@override $SavedMealDtoCopyWith<$Res>? get meal;

}
/// @nodoc
class __$AnalysisDtoCopyWithImpl<$Res>
    implements _$AnalysisDtoCopyWith<$Res> {
  __$AnalysisDtoCopyWithImpl(this._self, this._then);

  final _AnalysisDto _self;
  final $Res Function(_AnalysisDto) _then;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? items = null,Object? imageUrl = freezed,Object? meal = freezed,Object? dispute = freezed,Object? createdAt = null,}) {
  return _then(_AnalysisDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AnalysisItemDto>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,meal: freezed == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as SavedMealDto?,dispute: freezed == dispute ? _self._dispute : dispute // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedMealDtoCopyWith<$Res>? get meal {
    if (_self.meal == null) {
    return null;
  }

  return $SavedMealDtoCopyWith<$Res>(_self.meal!, (value) {
    return _then(_self.copyWith(meal: value));
  });
}
}


/// @nodoc
mixin _$AnalysisResponseDto {

 AnalysisDto get analysis;
/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisResponseDtoCopyWith<AnalysisResponseDto> get copyWith => _$AnalysisResponseDtoCopyWithImpl<AnalysisResponseDto>(this as AnalysisResponseDto, _$identity);

  /// Serializes this AnalysisResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AnalysisResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisResponseDto&&(identical(other.analysis, _this.analysis) || other.analysis == _this.analysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AnalysisResponseDto;
  return Object.hash(runtimeType,_this.analysis);
}

@override
String toString() {
  final _this = this as AnalysisResponseDto;
  return 'AnalysisResponseDto(analysis: ${_this.analysis})';
}


}

/// @nodoc
abstract mixin class $AnalysisResponseDtoCopyWith<$Res>  {
  factory $AnalysisResponseDtoCopyWith(AnalysisResponseDto value, $Res Function(AnalysisResponseDto) _then) = _$AnalysisResponseDtoCopyWithImpl;
@useResult
$Res call({
 AnalysisDto analysis
});


$AnalysisDtoCopyWith<$Res> get analysis;

}
/// @nodoc
class _$AnalysisResponseDtoCopyWithImpl<$Res>
    implements $AnalysisResponseDtoCopyWith<$Res> {
  _$AnalysisResponseDtoCopyWithImpl(this._self, this._then);

  final AnalysisResponseDto _self;
  final $Res Function(AnalysisResponseDto) _then;

/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? analysis = null,}) {
  return _then(AnalysisResponseDto(
analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as AnalysisDto,
  ));
}
/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<$Res> get analysis {
  
  return $AnalysisDtoCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisResponseDto].
extension AnalysisResponseDtoPatterns on AnalysisResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AnalysisDto analysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisResponseDto() when $default != null:
return $default(_that.analysis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AnalysisDto analysis)  $default,) {final _that = this;
switch (_that) {
case _AnalysisResponseDto():
return $default(_that.analysis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AnalysisDto analysis)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisResponseDto() when $default != null:
return $default(_that.analysis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisResponseDto implements AnalysisResponseDto {
  const _AnalysisResponseDto({required this.analysis});
  factory _AnalysisResponseDto.fromJson(Map<String, dynamic> json) => _$AnalysisResponseDtoFromJson(json);

@override final  AnalysisDto analysis;

/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisResponseDtoCopyWith<_AnalysisResponseDto> get copyWith => __$AnalysisResponseDtoCopyWithImpl<_AnalysisResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisResponseDto&&(identical(other.analysis, analysis) || other.analysis == analysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,analysis);
}

@override
String toString() {
    return 'AnalysisResponseDto(analysis: $analysis)';
}


}

/// @nodoc
abstract mixin class _$AnalysisResponseDtoCopyWith<$Res> implements $AnalysisResponseDtoCopyWith<$Res> {
  factory _$AnalysisResponseDtoCopyWith(_AnalysisResponseDto value, $Res Function(_AnalysisResponseDto) _then) = __$AnalysisResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 AnalysisDto analysis
});


@override $AnalysisDtoCopyWith<$Res> get analysis;

}
/// @nodoc
class __$AnalysisResponseDtoCopyWithImpl<$Res>
    implements _$AnalysisResponseDtoCopyWith<$Res> {
  __$AnalysisResponseDtoCopyWithImpl(this._self, this._then);

  final _AnalysisResponseDto _self;
  final $Res Function(_AnalysisResponseDto) _then;

/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? analysis = null,}) {
  return _then(_AnalysisResponseDto(
analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as AnalysisDto,
  ));
}

/// Create a copy of AnalysisResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<$Res> get analysis {
  
  return $AnalysisDtoCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// @nodoc
mixin _$DisputeRequest {

@JsonKey(includeIfNull: false) String? get reason;
/// Create a copy of DisputeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeRequestCopyWith<DisputeRequest> get copyWith => _$DisputeRequestCopyWithImpl<DisputeRequest>(this as DisputeRequest, _$identity);

  /// Serializes this DisputeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DisputeRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeRequest&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DisputeRequest;
  return Object.hash(runtimeType,_this.reason);
}

@override
String toString() {
  final _this = this as DisputeRequest;
  return 'DisputeRequest(reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $DisputeRequestCopyWith<$Res>  {
  factory $DisputeRequestCopyWith(DisputeRequest value, $Res Function(DisputeRequest) _then) = _$DisputeRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? reason
});




}
/// @nodoc
class _$DisputeRequestCopyWithImpl<$Res>
    implements $DisputeRequestCopyWith<$Res> {
  _$DisputeRequestCopyWithImpl(this._self, this._then);

  final DisputeRequest _self;
  final $Res Function(DisputeRequest) _then;

/// Create a copy of DisputeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = freezed,}) {
  return _then(DisputeRequest(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeRequest].
extension DisputeRequestPatterns on DisputeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeRequest value)  $default,){
final _that = this;
switch (_that) {
case _DisputeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeRequest() when $default != null:
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? reason)  $default,) {final _that = this;
switch (_that) {
case _DisputeRequest():
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _DisputeRequest() when $default != null:
return $default(_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeRequest implements DisputeRequest {
  const _DisputeRequest({@JsonKey(includeIfNull: false) this.reason});
  factory _DisputeRequest.fromJson(Map<String, dynamic> json) => _$DisputeRequestFromJson(json);

@override@JsonKey(includeIfNull: false) final  String? reason;

/// Create a copy of DisputeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeRequestCopyWith<_DisputeRequest> get copyWith => __$DisputeRequestCopyWithImpl<_DisputeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeRequest&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'DisputeRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$DisputeRequestCopyWith<$Res> implements $DisputeRequestCopyWith<$Res> {
  factory _$DisputeRequestCopyWith(_DisputeRequest value, $Res Function(_DisputeRequest) _then) = __$DisputeRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? reason
});




}
/// @nodoc
class __$DisputeRequestCopyWithImpl<$Res>
    implements _$DisputeRequestCopyWith<$Res> {
  __$DisputeRequestCopyWithImpl(this._self, this._then);

  final _DisputeRequest _self;
  final $Res Function(_DisputeRequest) _then;

/// Create a copy of DisputeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_DisputeRequest(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
