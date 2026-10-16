import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/constants/storage_keys.dart';

part 'secure_storage_service.g.dart';

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(Ref ref) =>
    SecureStorageService(const FlutterSecureStorage());

/// Stores auth tokens in the Keychain (iOS) / Keystore (Android).
class SecureStorageService {
  SecureStorageService(this._storage);

  final FlutterSecureStorage _storage;

  Future<String?> readAccessToken() =>
      _storage.read(key: SecureStorageKeys.accessToken);

  Future<String?> readRefreshToken() =>
      _storage.read(key: SecureStorageKeys.refreshToken);

  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    await _storage.write(
      key: SecureStorageKeys.accessToken,
      value: accessToken,
    );
    if (refreshToken != null) {
      await _storage.write(
        key: SecureStorageKeys.refreshToken,
        value: refreshToken,
      );
    }
  }

  Future<void> clearTokens() async {
    await _storage.delete(key: SecureStorageKeys.accessToken);
    await _storage.delete(key: SecureStorageKeys.refreshToken);
  }
}
