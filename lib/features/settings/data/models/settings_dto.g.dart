// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsDto _$SettingsDtoFromJson(Map<String, dynamic> json) =>
    _SettingsDto(autoSaveResults: json['autoSaveResults'] as bool);

Map<String, dynamic> _$SettingsDtoToJson(_SettingsDto instance) =>
    <String, dynamic>{'autoSaveResults': instance.autoSaveResults};

_SettingsResponseDto _$SettingsResponseDtoFromJson(Map<String, dynamic> json) =>
    _SettingsResponseDto(
      settings: SettingsDto.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsResponseDtoToJson(
  _SettingsResponseDto instance,
) => <String, dynamic>{'settings': instance.settings};
