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
mixin _$ScanSessionState implements DiagnosticableTreeMixin {

/// Local path of the captured or picked photo.
 String? get imagePath;/// Optional context from the Meal details screen.
 String get description; MealPortion get portion; String get notes;/// "Skip and analyse": send the photo without any details.
 bool get skipDetails;/// Current step while analysing; [AnalysisStep.done] after a scan.
 AnalysisStep? get step;/// The analysis behind the result (also set for a meal opened from
/// Home or History).
 String? get analysisId;/// The saved meal; null until saved when auto-save is off.
 String? get mealId; List<MealItem> get items; DateTime? get eatenAt;/// A signed link to the stored photo, for meals opened from history.
 String? get imageUrl; bool get isDisputed;/// Edits made before the result is saved (auto-save off).
 bool get hasUnsavedEdits;/// Used for "40% of your day"; null without a profile.
 int? get dailyReference;/// Loading a saved meal opened from Home or History.
 bool get isLoading; String? get loadError;/// Saving, disputing or applying an edit.
 bool get isBusy;/// A one-off message for a snack bar.
 String? get errorMessage;/// Why the photo couldn't be analysed, for the "Couldn't analyse"
/// screen.
 String? get unreadableReason;
/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanSessionStateCopyWith<ScanSessionState> get copyWith => _$ScanSessionStateCopyWithImpl<ScanSessionState>(this as ScanSessionState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as ScanSessionState;
  properties
    ..add(DiagnosticsProperty('type', 'ScanSessionState'))
    ..add(DiagnosticsProperty('imagePath', _this.imagePath))..add(DiagnosticsProperty('description', _this.description))..add(DiagnosticsProperty('portion', _this.portion))..add(DiagnosticsProperty('notes', _this.notes))..add(DiagnosticsProperty('skipDetails', _this.skipDetails))..add(DiagnosticsProperty('step', _this.step))..add(DiagnosticsProperty('analysisId', _this.analysisId))..add(DiagnosticsProperty('mealId', _this.mealId))..add(DiagnosticsProperty('items', _this.items))..add(DiagnosticsProperty('eatenAt', _this.eatenAt))..add(DiagnosticsProperty('imageUrl', _this.imageUrl))..add(DiagnosticsProperty('isDisputed', _this.isDisputed))..add(DiagnosticsProperty('hasUnsavedEdits', _this.hasUnsavedEdits))..add(DiagnosticsProperty('dailyReference', _this.dailyReference))..add(DiagnosticsProperty('isLoading', _this.isLoading))..add(DiagnosticsProperty('loadError', _this.loadError))..add(DiagnosticsProperty('isBusy', _this.isBusy))..add(DiagnosticsProperty('errorMessage', _this.errorMessage))..add(DiagnosticsProperty('unreadableReason', _this.unreadableReason));
}

@override
bool operator ==(Object other) {
  final _this = this as ScanSessionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanSessionState&&(identical(other.imagePath, _this.imagePath) || other.imagePath == _this.imagePath)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.portion, _this.portion) || other.portion == _this.portion)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.skipDetails, _this.skipDetails) || other.skipDetails == _this.skipDetails)&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.analysisId, _this.analysisId) || other.analysisId == _this.analysisId)&&(identical(other.mealId, _this.mealId) || other.mealId == _this.mealId)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.eatenAt, _this.eatenAt) || other.eatenAt == _this.eatenAt)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.isDisputed, _this.isDisputed) || other.isDisputed == _this.isDisputed)&&(identical(other.hasUnsavedEdits, _this.hasUnsavedEdits) || other.hasUnsavedEdits == _this.hasUnsavedEdits)&&(identical(other.dailyReference, _this.dailyReference) || other.dailyReference == _this.dailyReference)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.loadError, _this.loadError) || other.loadError == _this.loadError)&&(identical(other.isBusy, _this.isBusy) || other.isBusy == _this.isBusy)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.unreadableReason, _this.unreadableReason) || other.unreadableReason == _this.unreadableReason));
}


@override
int get hashCode {
  final _this = this as ScanSessionState;
  return Object.hashAll([runtimeType,_this.imagePath,_this.description,_this.portion,_this.notes,_this.skipDetails,_this.step,_this.analysisId,_this.mealId,const DeepCollectionEquality().hash(_this.items),_this.eatenAt,_this.imageUrl,_this.isDisputed,_this.hasUnsavedEdits,_this.dailyReference,_this.isLoading,_this.loadError,_this.isBusy,_this.errorMessage,_this.unreadableReason]);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as ScanSessionState;
  return 'ScanSessionState(imagePath: ${_this.imagePath}, description: ${_this.description}, portion: ${_this.portion}, notes: ${_this.notes}, skipDetails: ${_this.skipDetails}, step: ${_this.step}, analysisId: ${_this.analysisId}, mealId: ${_this.mealId}, items: ${_this.items}, eatenAt: ${_this.eatenAt}, imageUrl: ${_this.imageUrl}, isDisputed: ${_this.isDisputed}, hasUnsavedEdits: ${_this.hasUnsavedEdits}, dailyReference: ${_this.dailyReference}, isLoading: ${_this.isLoading}, loadError: ${_this.loadError}, isBusy: ${_this.isBusy}, errorMessage: ${_this.errorMessage}, unreadableReason: ${_this.unreadableReason})';
}


}

/// @nodoc
abstract mixin class $ScanSessionStateCopyWith<$Res>  {
  factory $ScanSessionStateCopyWith(ScanSessionState value, $Res Function(ScanSessionState) _then) = _$ScanSessionStateCopyWithImpl;
@useResult
$Res call({
 String? imagePath, String description, MealPortion portion, String notes, bool skipDetails, AnalysisStep? step, String? analysisId, String? mealId, List<MealItem> items, DateTime? eatenAt, String? imageUrl, bool isDisputed, bool hasUnsavedEdits, int? dailyReference, bool isLoading, String? loadError, bool isBusy, String? errorMessage, String? unreadableReason
});




}
/// @nodoc
class _$ScanSessionStateCopyWithImpl<$Res>
    implements $ScanSessionStateCopyWith<$Res> {
  _$ScanSessionStateCopyWithImpl(this._self, this._then);

  final ScanSessionState _self;
  final $Res Function(ScanSessionState) _then;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = freezed,Object? description = null,Object? portion = null,Object? notes = null,Object? skipDetails = null,Object? step = freezed,Object? analysisId = freezed,Object? mealId = freezed,Object? items = null,Object? eatenAt = freezed,Object? imageUrl = freezed,Object? isDisputed = null,Object? hasUnsavedEdits = null,Object? dailyReference = freezed,Object? isLoading = null,Object? loadError = freezed,Object? isBusy = null,Object? errorMessage = freezed,Object? unreadableReason = freezed,}) {
  return _then(ScanSessionState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as MealPortion,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,skipDetails: null == skipDetails ? _self.skipDetails : skipDetails // ignore: cast_nullable_to_non_nullable
as bool,step: freezed == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AnalysisStep?,analysisId: freezed == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String?,mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,eatenAt: freezed == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,hasUnsavedEdits: null == hasUnsavedEdits ? _self.hasUnsavedEdits : hasUnsavedEdits // ignore: cast_nullable_to_non_nullable
as bool,dailyReference: freezed == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadError: freezed == loadError ? _self.loadError : loadError // ignore: cast_nullable_to_non_nullable
as String?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,unreadableReason: freezed == unreadableReason ? _self.unreadableReason : unreadableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imagePath,  String description,  MealPortion portion,  String notes,  bool skipDetails,  AnalysisStep? step,  String? analysisId,  String? mealId,  List<MealItem> items,  DateTime? eatenAt,  String? imageUrl,  bool isDisputed,  bool hasUnsavedEdits,  int? dailyReference,  bool isLoading,  String? loadError,  bool isBusy,  String? errorMessage,  String? unreadableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.skipDetails,_that.step,_that.analysisId,_that.mealId,_that.items,_that.eatenAt,_that.imageUrl,_that.isDisputed,_that.hasUnsavedEdits,_that.dailyReference,_that.isLoading,_that.loadError,_that.isBusy,_that.errorMessage,_that.unreadableReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imagePath,  String description,  MealPortion portion,  String notes,  bool skipDetails,  AnalysisStep? step,  String? analysisId,  String? mealId,  List<MealItem> items,  DateTime? eatenAt,  String? imageUrl,  bool isDisputed,  bool hasUnsavedEdits,  int? dailyReference,  bool isLoading,  String? loadError,  bool isBusy,  String? errorMessage,  String? unreadableReason)  $default,) {final _that = this;
switch (_that) {
case _ScanSessionState():
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.skipDetails,_that.step,_that.analysisId,_that.mealId,_that.items,_that.eatenAt,_that.imageUrl,_that.isDisputed,_that.hasUnsavedEdits,_that.dailyReference,_that.isLoading,_that.loadError,_that.isBusy,_that.errorMessage,_that.unreadableReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imagePath,  String description,  MealPortion portion,  String notes,  bool skipDetails,  AnalysisStep? step,  String? analysisId,  String? mealId,  List<MealItem> items,  DateTime? eatenAt,  String? imageUrl,  bool isDisputed,  bool hasUnsavedEdits,  int? dailyReference,  bool isLoading,  String? loadError,  bool isBusy,  String? errorMessage,  String? unreadableReason)?  $default,) {final _that = this;
switch (_that) {
case _ScanSessionState() when $default != null:
return $default(_that.imagePath,_that.description,_that.portion,_that.notes,_that.skipDetails,_that.step,_that.analysisId,_that.mealId,_that.items,_that.eatenAt,_that.imageUrl,_that.isDisputed,_that.hasUnsavedEdits,_that.dailyReference,_that.isLoading,_that.loadError,_that.isBusy,_that.errorMessage,_that.unreadableReason);case _:
  return null;

}
}

}

/// @nodoc


class _ScanSessionState extends ScanSessionState with DiagnosticableTreeMixin {
  const _ScanSessionState({this.imagePath, this.description = '', this.portion = MealPortion.medium, this.notes = '', this.skipDetails = false, this.step, this.analysisId, this.mealId,  List<MealItem> items = const [], this.eatenAt, this.imageUrl, this.isDisputed = false, this.hasUnsavedEdits = false, this.dailyReference, this.isLoading = false, this.loadError, this.isBusy = false, this.errorMessage, this.unreadableReason}): _items = items,super._();
  

/// Local path of the captured or picked photo.
@override final  String? imagePath;
/// Optional context from the Meal details screen.
@override@JsonKey() final  String description;
@override@JsonKey() final  MealPortion portion;
@override@JsonKey() final  String notes;
/// "Skip and analyse": send the photo without any details.
@override@JsonKey() final  bool skipDetails;
/// Current step while analysing; [AnalysisStep.done] after a scan.
@override final  AnalysisStep? step;
/// The analysis behind the result (also set for a meal opened from
/// Home or History).
@override final  String? analysisId;
/// The saved meal; null until saved when auto-save is off.
@override final  String? mealId;
 final  List<MealItem> _items;
@override@JsonKey() List<MealItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  DateTime? eatenAt;
/// A signed link to the stored photo, for meals opened from history.
@override final  String? imageUrl;
@override@JsonKey() final  bool isDisputed;
/// Edits made before the result is saved (auto-save off).
@override@JsonKey() final  bool hasUnsavedEdits;
/// Used for "40% of your day"; null without a profile.
@override final  int? dailyReference;
/// Loading a saved meal opened from Home or History.
@override@JsonKey() final  bool isLoading;
@override final  String? loadError;
/// Saving, disputing or applying an edit.
@override@JsonKey() final  bool isBusy;
/// A one-off message for a snack bar.
@override final  String? errorMessage;
/// Why the photo couldn't be analysed, for the "Couldn't analyse"
/// screen.
@override final  String? unreadableReason;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanSessionStateCopyWith<_ScanSessionState> get copyWith => __$ScanSessionStateCopyWithImpl<_ScanSessionState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'ScanSessionState'))
    ..add(DiagnosticsProperty('imagePath', imagePath))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('portion', portion))..add(DiagnosticsProperty('notes', notes))..add(DiagnosticsProperty('skipDetails', skipDetails))..add(DiagnosticsProperty('step', step))..add(DiagnosticsProperty('analysisId', analysisId))..add(DiagnosticsProperty('mealId', mealId))..add(DiagnosticsProperty('items', items))..add(DiagnosticsProperty('eatenAt', eatenAt))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('isDisputed', isDisputed))..add(DiagnosticsProperty('hasUnsavedEdits', hasUnsavedEdits))..add(DiagnosticsProperty('dailyReference', dailyReference))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('loadError', loadError))..add(DiagnosticsProperty('isBusy', isBusy))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('unreadableReason', unreadableReason));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanSessionState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.description, description) || other.description == description)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.skipDetails, skipDetails) || other.skipDetails == skipDetails)&&(identical(other.step, step) || other.step == step)&&(identical(other.analysisId, analysisId) || other.analysisId == analysisId)&&(identical(other.mealId, mealId) || other.mealId == mealId)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.eatenAt, eatenAt) || other.eatenAt == eatenAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isDisputed, isDisputed) || other.isDisputed == isDisputed)&&(identical(other.hasUnsavedEdits, hasUnsavedEdits) || other.hasUnsavedEdits == hasUnsavedEdits)&&(identical(other.dailyReference, dailyReference) || other.dailyReference == dailyReference)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadError, loadError) || other.loadError == loadError)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.unreadableReason, unreadableReason) || other.unreadableReason == unreadableReason));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,imagePath,description,portion,notes,skipDetails,step,analysisId,mealId,const DeepCollectionEquality().hash(_items),eatenAt,imageUrl,isDisputed,hasUnsavedEdits,dailyReference,isLoading,loadError,isBusy,errorMessage,unreadableReason]);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'ScanSessionState(imagePath: $imagePath, description: $description, portion: $portion, notes: $notes, skipDetails: $skipDetails, step: $step, analysisId: $analysisId, mealId: $mealId, items: $items, eatenAt: $eatenAt, imageUrl: $imageUrl, isDisputed: $isDisputed, hasUnsavedEdits: $hasUnsavedEdits, dailyReference: $dailyReference, isLoading: $isLoading, loadError: $loadError, isBusy: $isBusy, errorMessage: $errorMessage, unreadableReason: $unreadableReason)';
}


}

/// @nodoc
abstract mixin class _$ScanSessionStateCopyWith<$Res> implements $ScanSessionStateCopyWith<$Res> {
  factory _$ScanSessionStateCopyWith(_ScanSessionState value, $Res Function(_ScanSessionState) _then) = __$ScanSessionStateCopyWithImpl;
@override @useResult
$Res call({
 String? imagePath, String description, MealPortion portion, String notes, bool skipDetails, AnalysisStep? step, String? analysisId, String? mealId, List<MealItem> items, DateTime? eatenAt, String? imageUrl, bool isDisputed, bool hasUnsavedEdits, int? dailyReference, bool isLoading, String? loadError, bool isBusy, String? errorMessage, String? unreadableReason
});




}
/// @nodoc
class __$ScanSessionStateCopyWithImpl<$Res>
    implements _$ScanSessionStateCopyWith<$Res> {
  __$ScanSessionStateCopyWithImpl(this._self, this._then);

  final _ScanSessionState _self;
  final $Res Function(_ScanSessionState) _then;

/// Create a copy of ScanSessionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? description = null,Object? portion = null,Object? notes = null,Object? skipDetails = null,Object? step = freezed,Object? analysisId = freezed,Object? mealId = freezed,Object? items = null,Object? eatenAt = freezed,Object? imageUrl = freezed,Object? isDisputed = null,Object? hasUnsavedEdits = null,Object? dailyReference = freezed,Object? isLoading = null,Object? loadError = freezed,Object? isBusy = null,Object? errorMessage = freezed,Object? unreadableReason = freezed,}) {
  return _then(_ScanSessionState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as MealPortion,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,skipDetails: null == skipDetails ? _self.skipDetails : skipDetails // ignore: cast_nullable_to_non_nullable
as bool,step: freezed == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AnalysisStep?,analysisId: freezed == analysisId ? _self.analysisId : analysisId // ignore: cast_nullable_to_non_nullable
as String?,mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealItem>,eatenAt: freezed == eatenAt ? _self.eatenAt : eatenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isDisputed: null == isDisputed ? _self.isDisputed : isDisputed // ignore: cast_nullable_to_non_nullable
as bool,hasUnsavedEdits: null == hasUnsavedEdits ? _self.hasUnsavedEdits : hasUnsavedEdits // ignore: cast_nullable_to_non_nullable
as bool,dailyReference: freezed == dailyReference ? _self.dailyReference : dailyReference // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadError: freezed == loadError ? _self.loadError : loadError // ignore: cast_nullable_to_non_nullable
as String?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,unreadableReason: freezed == unreadableReason ? _self.unreadableReason : unreadableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
