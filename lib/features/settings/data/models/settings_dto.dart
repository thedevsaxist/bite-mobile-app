import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/settings/domain/entities/app_settings.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

/// Also the `PATCH /settings` body, so it holds only fields the backend
/// accepts.
@freezed
abstract class SettingsDto with _$SettingsDto {
  const factory SettingsDto({required bool autoSaveResults}) = _SettingsDto;
  const SettingsDto._();

  factory SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsDtoFromJson(json);

  AppSettings toEntity() => AppSettings(autoSaveResults: autoSaveResults);
}

/// `{"settings": {...}}`.
@freezed
abstract class SettingsResponseDto with _$SettingsResponseDto {
  const factory SettingsResponseDto({required SettingsDto settings}) =
      _SettingsResponseDto;

  factory SettingsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsResponseDtoFromJson(json);
}
