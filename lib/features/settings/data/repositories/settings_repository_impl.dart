import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/storage/preferences_service.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/settings/data/datasources/settings_api_service.dart';
import 'package:calorie_estimator/features/settings/data/models/settings_dto.dart';
import 'package:calorie_estimator/features/settings/domain/entities/app_settings.dart';
import 'package:calorie_estimator/features/settings/domain/repositories/settings_repository.dart';

part 'settings_repository_impl.g.dart';

@riverpod
SettingsRepository settingsRepository(Ref ref) => SettingsRepositoryImpl(
  ref.watch(settingsApiServiceProvider),
  ref.watch(preferencesServiceProvider),
);

/// The backend's `user_settings` is the source of truth; [PreferencesService]
/// keeps a copy for offline use and for the scan flow to read synchronously.
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._api, this._preferences);

  final SettingsApiService _api;
  final PreferencesService _preferences;

  @override
  FutureEither<AppSettings> getSettings() async {
    final remote = await guard(() async {
      final response = await _api.getSettings();
      return _keep(response.settings);
    });

    if (remote case Left(value: final failure) when failure.isUnreachable) {
      return Right(AppSettings(autoSaveResults: _preferences.autoSaveResults));
    }
    return remote;
  }

  @override
  FutureEither<AppSettings> setAutoSaveResults(bool enabled) => guard(() async {
    final response = await _api.updateSettings(
      SettingsDto(autoSaveResults: enabled),
    );
    return _keep(response.settings);
  });

  Future<AppSettings> _keep(SettingsDto settings) async {
    await _preferences.setAutoSaveResults(settings.autoSaveResults);
    return settings.toEntity();
  }
}
