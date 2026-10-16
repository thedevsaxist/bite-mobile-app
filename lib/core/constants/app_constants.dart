abstract final class AppConstants {
  static const appName = 'Scoop';

  // TODO: read from package_info_plus once release builds are versioned.
  static const appVersionLabel = 'Version 1.0.0 (Build 1)';

  static const minPasswordLength = 8;

  /// Shown wherever calorie values appear (non-functional requirement:
  /// transparency).
  static const estimateDisclaimer =
      'These are estimates from your photo. Oil, sauces and hidden '
      'ingredients may change the real amount.';
}
