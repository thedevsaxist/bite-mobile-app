import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:calorie_estimator/core/constants/storage_keys.dart';

part 'preferences_service.g.dart';

/// Created in `main()` before the app starts and injected with
/// `sharedPreferencesProvider.overrideWithValue(...)`.
@Riverpod(keepAlive: true)
SharedPreferencesWithCache sharedPreferences(Ref ref) =>
    throw UnimplementedError('sharedPreferencesProvider must be overridden');

@Riverpod(keepAlive: true)
PreferencesService preferencesService(Ref ref) =>
    PreferencesService(ref.watch(sharedPreferencesProvider));

/// Non-sensitive local preferences.
class PreferencesService {
  PreferencesService(this._prefs);

  final SharedPreferencesWithCache _prefs;

  static Future<SharedPreferencesWithCache> init() =>
      SharedPreferencesWithCache.create(
        cacheOptions: const SharedPreferencesWithCacheOptions(
          allowList: PreferenceKeys.all,
        ),
      );

  bool get hasSeenWelcome =>
      _prefs.getBool(PreferenceKeys.hasSeenWelcome) ?? false;

  Future<void> setHasSeenWelcome() =>
      _prefs.setBool(PreferenceKeys.hasSeenWelcome, true);

  /// Auto-saving analysis results is on by default (report §3.5.1).
  bool get autoSaveResults =>
      _prefs.getBool(PreferenceKeys.autoSaveResults) ?? true;

  Future<void> setAutoSaveResults(bool value) =>
      _prefs.setBool(PreferenceKeys.autoSaveResults, value);
}
