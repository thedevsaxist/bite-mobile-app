// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsDto {

 bool get autoSaveResults;
/// Create a copy of SettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsDtoCopyWith<SettingsDto> get copyWith => _$SettingsDtoCopyWithImpl<SettingsDto>(this as SettingsDto, _$identity);

  /// Serializes this SettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SettingsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsDto&&(identical(other.autoSaveResults, _this.autoSaveResults) || other.autoSaveResults == _this.autoSaveResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SettingsDto;
  return Object.hash(runtimeType,_this.autoSaveResults);
}

@override
String toString() {
  final _this = this as SettingsDto;
  return 'SettingsDto(autoSaveResults: ${_this.autoSaveResults})';
}


}

/// @nodoc
abstract mixin class $SettingsDtoCopyWith<$Res>  {
  factory $SettingsDtoCopyWith(SettingsDto value, $Res Function(SettingsDto) _then) = _$SettingsDtoCopyWithImpl;
@useResult
$Res call({
 bool autoSaveResults
});




}
/// @nodoc
class _$SettingsDtoCopyWithImpl<$Res>
    implements $SettingsDtoCopyWith<$Res> {
  _$SettingsDtoCopyWithImpl(this._self, this._then);

  final SettingsDto _self;
  final $Res Function(SettingsDto) _then;

/// Create a copy of SettingsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autoSaveResults = null,}) {
  return _then(SettingsDto(
autoSaveResults: null == autoSaveResults ? _self.autoSaveResults : autoSaveResults // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsDto].
extension SettingsDtoPatterns on SettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _SettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool autoSaveResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsDto() when $default != null:
return $default(_that.autoSaveResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool autoSaveResults)  $default,) {final _that = this;
switch (_that) {
case _SettingsDto():
return $default(_that.autoSaveResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool autoSaveResults)?  $default,) {final _that = this;
switch (_that) {
case _SettingsDto() when $default != null:
return $default(_that.autoSaveResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsDto extends SettingsDto {
  const _SettingsDto({required this.autoSaveResults}): super._();
  factory _SettingsDto.fromJson(Map<String, dynamic> json) => _$SettingsDtoFromJson(json);

@override final  bool autoSaveResults;

/// Create a copy of SettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsDtoCopyWith<_SettingsDto> get copyWith => __$SettingsDtoCopyWithImpl<_SettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsDto&&(identical(other.autoSaveResults, autoSaveResults) || other.autoSaveResults == autoSaveResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,autoSaveResults);
}

@override
String toString() {
    return 'SettingsDto(autoSaveResults: $autoSaveResults)';
}


}

/// @nodoc
abstract mixin class _$SettingsDtoCopyWith<$Res> implements $SettingsDtoCopyWith<$Res> {
  factory _$SettingsDtoCopyWith(_SettingsDto value, $Res Function(_SettingsDto) _then) = __$SettingsDtoCopyWithImpl;
@override @useResult
$Res call({
 bool autoSaveResults
});




}
/// @nodoc
class __$SettingsDtoCopyWithImpl<$Res>
    implements _$SettingsDtoCopyWith<$Res> {
  __$SettingsDtoCopyWithImpl(this._self, this._then);

  final _SettingsDto _self;
  final $Res Function(_SettingsDto) _then;

/// Create a copy of SettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autoSaveResults = null,}) {
  return _then(_SettingsDto(
autoSaveResults: null == autoSaveResults ? _self.autoSaveResults : autoSaveResults // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SettingsResponseDto {

 SettingsDto get settings;
/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsResponseDtoCopyWith<SettingsResponseDto> get copyWith => _$SettingsResponseDtoCopyWithImpl<SettingsResponseDto>(this as SettingsResponseDto, _$identity);

  /// Serializes this SettingsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SettingsResponseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsResponseDto&&(identical(other.settings, _this.settings) || other.settings == _this.settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SettingsResponseDto;
  return Object.hash(runtimeType,_this.settings);
}

@override
String toString() {
  final _this = this as SettingsResponseDto;
  return 'SettingsResponseDto(settings: ${_this.settings})';
}


}

/// @nodoc
abstract mixin class $SettingsResponseDtoCopyWith<$Res>  {
  factory $SettingsResponseDtoCopyWith(SettingsResponseDto value, $Res Function(SettingsResponseDto) _then) = _$SettingsResponseDtoCopyWithImpl;
@useResult
$Res call({
 SettingsDto settings
});


$SettingsDtoCopyWith<$Res> get settings;

}
/// @nodoc
class _$SettingsResponseDtoCopyWithImpl<$Res>
    implements $SettingsResponseDtoCopyWith<$Res> {
  _$SettingsResponseDtoCopyWithImpl(this._self, this._then);

  final SettingsResponseDto _self;
  final $Res Function(SettingsResponseDto) _then;

/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,}) {
  return _then(SettingsResponseDto(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as SettingsDto,
  ));
}
/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsDtoCopyWith<$Res> get settings {
  
  return $SettingsDtoCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsResponseDto].
extension SettingsResponseDtoPatterns on SettingsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SettingsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsDto settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsResponseDto() when $default != null:
return $default(_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsDto settings)  $default,) {final _that = this;
switch (_that) {
case _SettingsResponseDto():
return $default(_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsDto settings)?  $default,) {final _that = this;
switch (_that) {
case _SettingsResponseDto() when $default != null:
return $default(_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsResponseDto implements SettingsResponseDto {
  const _SettingsResponseDto({required this.settings});
  factory _SettingsResponseDto.fromJson(Map<String, dynamic> json) => _$SettingsResponseDtoFromJson(json);

@override final  SettingsDto settings;

/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsResponseDtoCopyWith<_SettingsResponseDto> get copyWith => __$SettingsResponseDtoCopyWithImpl<_SettingsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsResponseDto&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,settings);
}

@override
String toString() {
    return 'SettingsResponseDto(settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$SettingsResponseDtoCopyWith<$Res> implements $SettingsResponseDtoCopyWith<$Res> {
  factory _$SettingsResponseDtoCopyWith(_SettingsResponseDto value, $Res Function(_SettingsResponseDto) _then) = __$SettingsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 SettingsDto settings
});


@override $SettingsDtoCopyWith<$Res> get settings;

}
/// @nodoc
class __$SettingsResponseDtoCopyWithImpl<$Res>
    implements _$SettingsResponseDtoCopyWith<$Res> {
  __$SettingsResponseDtoCopyWithImpl(this._self, this._then);

  final _SettingsResponseDto _self;
  final $Res Function(_SettingsResponseDto) _then;

/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(_SettingsResponseDto(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as SettingsDto,
  ));
}

/// Create a copy of SettingsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsDtoCopyWith<$Res> get settings {
  
  return $SettingsDtoCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
