import 'package:calorie_estimator/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

import 'package:calorie_estimator/app/app.dart';
import 'package:calorie_estimator/core/storage/app_database.dart';
import 'package:calorie_estimator/core/storage/preferences_service.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // The free UIcons licence requires crediting Flaticon.
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks([
      'UIcons by Flaticon',
    ], await rootBundle.loadString('assets/licenses/flaticon-uicons.txt'));
  });

  final (sharedPreferences, database) = await (
    PreferencesService.init(),
    AppDatabase.open(),
  ).wait;

  // iOS keeps Keychain items after the app is deleted, so a reinstall would
  // otherwise restore the previous session.
  final preferences = PreferencesService(sharedPreferences);
  if (!preferences.hasLaunchedBefore) {
    await SecureStorageService().clearAll();
    await preferences.setHasLaunchedBefore();
  }

  // Pre-warms the liquid glass shaders used by the iOS tab bar.
  await LiquidGlassWidgets.initialize(enablePerformanceMonitor: false);

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        appDatabaseProvider.overrideWithValue(database),
      ],
      child: LiquidGlassWidgets.wrap(
        brightnessResolver: Theme.maybeBrightnessOf,
        child: const App(),
      ),
    ),
  );
}
