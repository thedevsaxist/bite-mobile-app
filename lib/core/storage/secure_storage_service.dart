import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/constants/storage_keys.dart';

part 'secure_storage_service.g.dart';

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(Ref ref) => SecureStorageService();

/// Stores credentials in the Keychain (iOS) / Keystore-encrypted storage
/// (Android). Keys live in [SecureStorageKeys].
class SecureStorageService {
  SecureStorageService([FlutterSecureStorage? storage])
    : _storage = storage ?? _defaultStorage;

  // `first_unlock_this_device`: readable by background requests after the
  // first unlock, and never restored onto another device from a backup.
  static const _defaultStorage = FlutterSecureStorage(
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  final FlutterSecureStorage _storage;

  Future<String?> readAccessToken() => read(SecureStorageKeys.accessToken);

  Future<String?> readRefreshToken() => read(SecureStorageKeys.refreshToken);

  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    await write(SecureStorageKeys.accessToken, accessToken);
    if (refreshToken != null) {
      await write(SecureStorageKeys.refreshToken, refreshToken);
    }
  }

  Future<void> clearTokens() async {
    await delete(SecureStorageKeys.accessToken);
    await delete(SecureStorageKeys.refreshToken);
  }

  Future<String?> read(String key) => _storage.read(key: key);

  Future<void> write(String key, String value) =>
      _storage.write(key: key, value: value);

  Future<void> delete(String key) => _storage.delete(key: key);

  /// Removes every stored credential, e.g. on log out or a fresh install.
  Future<void> clearAll() => _storage.deleteAll();
}
