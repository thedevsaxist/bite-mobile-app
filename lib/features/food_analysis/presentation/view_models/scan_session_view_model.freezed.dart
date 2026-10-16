// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_session_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScanSessionState {

/// Local path of the captured or picked photo.
 String? get imagePath;/// Optional context from the Meal details screen.
 String get description; MealPortion get portion; String get notes;/// Current step while analysing; null before analysis starts.
 AnalysisStep? get step; FoodAnalysis? get analysis; MealType get mealType;/// Mirrors the "Save results automatically" setting (on by default).
 bool get autoSave; bool get isSaved; bool get isDisputed;/// Used for "40% of your day".
 int get dailyReference;
/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanSessionStateCopyWith<ScanSessionState> get copyWith => _$ScanSessionStateCopyWithImpl<ScanSessionState>(this as ScanSessionState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ScanSessionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanSessionState&&(identical(other.imagePath, _this.imagePath) || other.imagePath == _this.imagePath)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.portion, _this.portion) || other.portion == _this.portion)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.analysis, _this.analysis) || other.analysis == _this.analysis)&&(identical(other.mealType, _this.mealType) || other.mealType == _this.mealType)&&(identical(other.autoSave, _this.autoSave) || other.autoSave == _this.autoSave)&&(identical(other.isSaved, _this.isSaved) || other.isSaved == _this.isSaved)&&(identical(other.isDisputed, _this.isDisputed) || other.isDisputed == _this.isDisputed)&&(identical(other.dailyReference, _this.dailyReference) || other.dailyReference == _this.dailyReference));
}


@override
int get hashCode {
  final _this = this as ScanSessionState;
  return Object.hash(runtimeType,_this.imagePath,_this.description,_this.portion,_this.notes,_this.step,_this.analysis,_this.mealType,_this.autoSave,_this.isSaved,_this.isDisputed,_this.dailyReference);
}

@override
String toString() {
  final _this = this as ScanSessionState;
  return 'ScanSessionState(imagePath: ${_this.imagePath}, description: ${_this.description}, portion: ${_this.portion}, notes: ${_this.notes}, step: ${_this.step}, analysis: ${_this.analysis}, mealType: ${_this.mealType}, autoSave: ${_this.autoSave}, isSaved: ${_this.isSaved}, isDisputed: ${_this.isDisputed}, dailyReference: ${_this.dailyReference})';
}


}

/// @nodoc
abstract mixin class $ScanSessionStateCopyWith<$Res>  {
  factory $ScanSessionStateCopyWith(ScanSessionState value, $Res Function(ScanSessionState) _then) = _$ScanSessionStateCopyWithImpl;
@useResult
$Res call({
 String? imagePath, String description, MealPortion portion, String notes, AnalysisStep? step, FoodAnalysis? analysis, MealType mealType, bool autoSave, bool isSaved, bool isDisputed, int dailyReference
});


$FoodAnalysisCopyWith<$Res>? get analysis;

}
/// @nodoc
class _$ScanSessionStateCopyWithImpl<$Res>
    implements $ScanSessionStateCopyWith<$Res> {
  _$ScanSessionStateCopyWithImpl(this._self, this._then);

  final ScanSessionState _self;
  final $Res Function(ScanSessionState) _then;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = freezed,Object? description = null,Object? portion = null,Object? notes = null,Object? step = freezed,Object? analysis = freezed,Object? mealType = null,Object? autoSave = null,Object? isSaved = null,Object? isDisputed = null,Object? dailyReference = null,}) {
  return _then(ScanSessionState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as MealPortion,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,step: freezed == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AnalysisStep?,analysis: freezed == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as FoodAnalysis?,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,autoSave: null == autoSave ? _self.autoSave : autoSave // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,dailyReference: null == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisCopyWith<$Res>? get analysis {
    if (_self.analysis == null) {
    return null;
  }

  return $FoodAnalysisCopyWith<$Res>(_self.analysis!, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScanSessionState].
extension ScanSessionStatePatterns on ScanSessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanSessionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanSessionState value)  $default,){
final _that = this;
switch (_that) {
case _ScanSessionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanSessionState value)?  $default,){
final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imagePath,  String description,  MealPortion portion,  String notes,  AnalysisStep? step,  FoodAnalysis? analysis,  MealType mealType,  bool autoSave,  bool isSaved,  bool isDisputed,  int dailyReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.step,_that.analysis,_that.mealType,_that.autoSave,_that.isSaved,_that.isDisputed,_that.dailyReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imagePath,  String description,  MealPortion portion,  String notes,  AnalysisStep? step,  FoodAnalysis? analysis,  MealType mealType,  bool autoSave,  bool isSaved,  bool isDisputed,  int dailyReference)  $default,) {final _that = this;
switch (_that) {
case _ScanSessionState():
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.step,_that.analysis,_that.mealType,_that.autoSave,_that.isSaved,_that.isDisputed,_that.dailyReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imagePath,  String description,  MealPortion portion,  String notes,  AnalysisStep? step,  FoodAnalysis? analysis,  MealType mealType,  bool autoSave,  bool isSaved,  bool isDisputed,  int dailyReference)?  $default,) {final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.step,_that.analysis,_that.mealType,_that.autoSave,_that.isSaved,_that.isDisputed,_that.dailyReference);case _:
  return null;

}
}

}

/// @nodoc


class _ScanSessionState implements ScanSessionState {
  const _ScanSessionState({this.imagePath, this.description = '', this.portion = MealPortion.medium, this.notes = '', this.step, this.analysis, this.mealType = MealType.lunch, this.autoSave = true, this.isSaved = false, this.isDisputed = false, this.dailyReference = 2150});
  

/// Local path of the captured or picked photo.
@override final  String? imagePath;
/// Optional context from the Meal details screen.
@override@JsonKey() final  String description;
@override@JsonKey() final  MealPortion portion;
@override@JsonKey() final  String notes;
/// Current step while analysing; null before analysis starts.
@override final  AnalysisStep? step;
@override final  FoodAnalysis? analysis;
@override@JsonKey() final  MealType mealType;
/// Mirrors the "Save results automatically" setting (on by default).
@override@JsonKey() final  bool autoSave;
@override@JsonKey() final  bool isSaved;
@override@JsonKey() final  bool isDisputed;
/// Used for "40% of your day".
@override@JsonKey() final  int dailyReference;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanSessionStateCopyWith<_ScanSessionState> get copyWith => __$ScanSessionStateCopyWithImpl<_ScanSessionState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanSessionState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.description, description) || other.description == description)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.step, step) || other.step == step)&&(identical(other.analysis, analysis) || other.analysis == analysis)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.autoSave, autoSave) || other.autoSave == autoSave)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isDisputed, isDisputed) || other.isDisputed == isDisputed)&&(identical(other.dailyReference, dailyReference) || other.dailyReference == dailyReference));
}


@override
int get hashCode {
    return Object.hash(runtimeType,imagePath,description,portion,notes,step,analysis,mealType,autoSave,isSaved,isDisputed,dailyReference);
}

@override
String toString() {
    return 'ScanSessionState(imagePath: $imagePath, description: $description, portion: $portion, notes: $notes, step: $step, analysis: $analysis, mealType: $mealType, autoSave: $autoSave, isSaved: $isSaved, isDisputed: $isDisputed, dailyReference: $dailyReference)';
}


}

/// @nodoc
abstract mixin class _$ScanSessionStateCopyWith<$Res> implements $ScanSessionStateCopyWith<$Res> {
  factory _$ScanSessionStateCopyWith(_ScanSessionState value, $Res Function(_ScanSessionState) _then) = __$ScanSessionStateCopyWithImpl;
@override @useResult
$Res call({
 String? imagePath, String description, MealPortion portion, String notes, AnalysisStep? step, FoodAnalysis? analysis, MealType mealType, bool autoSave, bool isSaved, bool isDisputed, int dailyReference
});


@override $FoodAnalysisCopyWith<$Res>? get analysis;

}
/// @nodoc
class __$ScanSessionStateCopyWithImpl<$Res>
    implements _$ScanSessionStateCopyWith<$Res> {
  __$ScanSessionStateCopyWithImpl(this._self, this._then);

  final _ScanSessionState _self;
  final $Res Function(_ScanSessionState) _then;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? description = null,Object? portion = null,Object? notes = null,Object? step = freezed,Object? analysis = freezed,Object? mealType = null,Object? autoSave = null,Object? isSaved = null,Object? isDisputed = null,Object? dailyReference = null,}) {
  return _then(_ScanSessionState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as MealPortion,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,step: freezed == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AnalysisStep?,analysis: freezed == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as FoodAnalysis?,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as MealType,autoSave: null == autoSave ? _self.autoSave : autoSave // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,dailyReference: null == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisCopyWith<$Res>? get analysis {
    if (_self.analysis == null) {
    return null;
  }

  return $FoodAnalysisCopyWith<$Res>(_self.analysis!, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}

// dart format on
