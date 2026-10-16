import 'package:flutter/foundation.dart';

/// Build-time configuration, supplied with `--dart-define`.
///
/// ```sh
/// flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8000/api/v1
/// ```
abstract final class AppConfig {
  /// Android emulators reach the host machine at 10.0.2.2, iOS simulators at
  /// localhost.
  static const apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:8000/api/v1',
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
