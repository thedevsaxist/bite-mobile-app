import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/settings/domain/entities/app_settings.dart';

abstract interface class SettingsRepository {
  /// From the backend, or the copy kept on the device when it can't be
  /// reached.
  FutureEither<AppSettings> getSettings();

  FutureEither<AppSettings> setAutoSaveResults(bool enabled);
}
