import 'package:flutter/foundation.dart';

/// Build-time configuration, supplied with `--dart-define`.
///
/// ```sh
/// flutter run --dart-define=API_BASE_URL=http://10.0.2.2:4000/api/v1
/// ```
abstract final class AppConfig {
  /// Android emulators reach the host machine at 10.0.2.2, iOS simulators at
  /// localhost. The backend listens on port 4000 by default.
  static const apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:4000/api/v1',
  );

  /// The *web* OAuth client ID of the Firebase project (`bite-466bf`,
  /// client type 3 in `google-services.json`). Google puts it in the ID
  /// token's audience on Android, so it must also be in the backend's
  /// `GOOGLE_CLIENT_IDS`. On iOS the app's own client ID comes from
  /// `GIDClientID` in Info.plist (see `ios/Flutter/GoogleSignIn.xcconfig`).
  /// OAuth client IDs aren't secret: they ship inside the app.
  static const googleServerClientId = String.fromEnvironment(
    'GOOGLE_SERVER_CLIENT_ID',
    defaultValue: '644722027095-aaaruv14k0uo8f0dv62g6loj5kutm3nk.apps.googleusercontent.com',
  );

  static const enableNetworkLogs = bool.fromEnvironment(
    'ENABLE_NETWORK_LOGS',
    defaultValue: kDebugMode,
  );

  static const connectTimeout = Duration(seconds: 15);
  static const sendTimeout = Duration(seconds: 30);

  /// Food analysis waits on an external AI model, so responses can be slow.
  static const receiveTimeout = Duration(seconds: 60);
}
