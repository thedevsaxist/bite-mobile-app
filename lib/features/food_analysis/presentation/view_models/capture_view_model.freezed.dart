// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capture_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaptureState {

 bool get isCameraReady; bool get flashOn; bool get isCapturing; String? get errorMessage;
/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaptureStateCopyWith<CaptureState> get copyWith => _$CaptureStateCopyWithImpl<CaptureState>(this as CaptureState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CaptureState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureState&&(identical(other.isCameraReady, _this.isCameraReady) || other.isCameraReady == _this.isCameraReady)&&(identical(other.flashOn, _this.flashOn) || other.flashOn == _this.flashOn)&&(identical(other.isCapturing, _this.isCapturing) || other.isCapturing == _this.isCapturing)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as CaptureState;
  return Object.hash(runtimeType,_this.isCameraReady,_this.flashOn,_this.isCapturing,_this.errorMessage);
}

@override
String toString() {
  final _this = this as CaptureState;
  return 'CaptureState(isCameraReady: ${_this.isCameraReady}, flashOn: ${_this.flashOn}, isCapturing: ${_this.isCapturing}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $CaptureStateCopyWith<$Res>  {
  factory $CaptureStateCopyWith(CaptureState value, $Res Function(CaptureState) _then) = _$CaptureStateCopyWithImpl;
@useResult
$Res call({
 bool isCameraReady, bool flashOn, bool isCapturing, String? errorMessage
});




}
/// @nodoc
class _$CaptureStateCopyWithImpl<$Res>
    implements $CaptureStateCopyWith<$Res> {
  _$CaptureStateCopyWithImpl(this._self, this._then);

  final CaptureState _self;
  final $Res Function(CaptureState) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCameraReady = null,Object? flashOn = null,Object? isCapturing = null,Object? errorMessage = freezed,}) {
  return _then(CaptureState(
isCameraReady: null == isCameraReady ? _self.isCameraReady : isCameraReady // ignore: cast_nullable_to_non_nullable
as bool,flashOn: null == flashOn ? _self.flashOn : flashOn // ignore: cast_nullable_to_non_nullable
as bool,isCapturing: null == isCapturing ? _self.isCapturing : isCapturing // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaptureState].
extension CaptureStatePatterns on CaptureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaptureState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaptureState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaptureState value)  $default,){
final _that = this;
switch (_that) {
case _CaptureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaptureState value)?  $default,){
final _that = this;
switch (_that) {
case _CaptureState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCameraReady,  bool flashOn,  bool isCapturing,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaptureState() when $default != null:
return $default(_that.isCameraReady,_that.flashOn,_that.isCapturing,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCameraReady,  bool flashOn,  bool isCapturing,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CaptureState():
return $default(_that.isCameraReady,_that.flashOn,_that.isCapturing,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCameraReady,  bool flashOn,  bool isCapturing,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CaptureState() when $default != null:
return $default(_that.isCameraReady,_that.flashOn,_that.isCapturing,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CaptureState implements CaptureState {
  const _CaptureState({this.isCameraReady = false, this.flashOn = false, this.isCapturing = false, this.errorMessage});
  

@override@JsonKey() final  bool isCameraReady;
@override@JsonKey() final  bool flashOn;
@override@JsonKey() final  bool isCapturing;
@override final  String? errorMessage;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaptureStateCopyWith<_CaptureState> get copyWith => __$CaptureStateCopyWithImpl<_CaptureState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaptureState&&(identical(other.isCameraReady, isCameraReady) || other.isCameraReady == isCameraReady)&&(identical(other.flashOn, flashOn) || other.flashOn == flashOn)&&(identical(other.isCapturing, isCapturing) || other.isCapturing == isCapturing)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isCameraReady,flashOn,isCapturing,errorMessage);
}

@override
String toString() {
    return 'CaptureState(isCameraReady: $isCameraReady, flashOn: $flashOn, isCapturing: $isCapturing, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CaptureStateCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory _$CaptureStateCopyWith(_CaptureState value, $Res Function(_CaptureState) _then) = __$CaptureStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCameraReady, bool flashOn, bool isCapturing, String? errorMessage
});




}
/// @nodoc
class __$CaptureStateCopyWithImpl<$Res>
    implements _$CaptureStateCopyWith<$Res> {
  __$CaptureStateCopyWithImpl(this._self, this._then);

  final _CaptureState _self;
  final $Res Function(_CaptureState) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCameraReady = null,Object? flashOn = null,Object? isCapturing = null,Object? errorMessage = freezed,}) {
  return _then(_CaptureState(
isCameraReady: null == isCameraReady ? _self.isCameraReady : isCameraReady // ignore: cast_nullable_to_non_nullable
as bool,flashOn: null == flashOn ? _self.flashOn : flashOn // ignore: cast_nullable_to_non_nullable
as bool,isCapturing: null == isCapturing ? _self.isCapturing : isCapturing // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
