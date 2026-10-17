abstract final class AppConstants {
  /// Used in sentences ("New to Bite?") and as the device display name.
  static const appName = 'Bite';

  /// The lowercase logo wordmark.
  static const wordmark = 'bite';

  // TODO: read from package_info_plus once release builds are versioned.
  static const appVersionLabel = 'Version 1.0.0 (Build 1)';

  static const minPasswordLength = 8;

  /// Shown wherever calorie values appear (non-functional requirement:
  /// transparency).
  static const estimateDisclaimer =
      'These are estimates from your photo. Oil, sauces and hidden '
      'ingredients may change the real amount.';
}
