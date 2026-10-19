/// Keys for values kept in secure storage (credentials).
abstract final class SecureStorageKeys {
  static const accessToken = 'access_token';
  static const refreshToken = 'refresh_token';
}

/// Keys for non-sensitive preferences kept in shared preferences.
abstract final class PreferenceKeys {
  static const hasLaunchedBefore = 'has_launched_before';
  static const hasSeenWelcome = 'has_seen_welcome';
  static const autoSaveResults = 'auto_save_results';

  static const all = {hasLaunchedBefore, hasSeenWelcome, autoSaveResults};
}
