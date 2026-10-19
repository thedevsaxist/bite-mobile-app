import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/storage/app_database.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_response_dto.dart';
import 'package:calorie_estimator/features/auth/data/models/user_dto.dart';

part 'auth_local_data_source.g.dart';

@riverpod
AuthLocalDataSource authLocalDataSource(Ref ref) => AuthLocalDataSource(
  ref.watch(secureStorageServiceProvider),
  ref.watch(appDatabaseProvider),
);

/// The session tokens (secure storage) and the signed-in user's cached row
/// (`users` table), so the app can start offline.
class AuthLocalDataSource {
  AuthLocalDataSource(this._secureStorage, this._database);

  final SecureStorageService _secureStorage;
  final AppDatabase _database;

  Future<void> saveTokens(AuthTokensDto tokens) => _secureStorage.saveTokens(
    accessToken: tokens.accessToken,
    refreshToken: tokens.refreshToken,
  );

  Future<String?> readRefreshToken() => _secureStorage.readRefreshToken();

  Future<bool> hasSession() async =>
      await _secureStorage.readRefreshToken() != null;

  /// Keeps only this user's row; a different account signing in on the same
  /// device drops the previous one's cached data (it cascades).
  Future<void> cacheUser(UserDto user) => _database.db.transaction((txn) async {
    await txn.delete(
      DbTables.users,
      where: 'user_id != ?',
      whereArgs: [user.id],
    );
    // An upsert, not INSERT OR REPLACE: replacing deletes the row first,
    // which would cascade to the cached profile and meals.
    await txn.rawInsert(
      'INSERT INTO ${DbTables.users} (user_id, full_name, email, updated_at) '
      'VALUES (?, ?, ?, ?) '
      'ON CONFLICT (user_id) DO UPDATE SET full_name = excluded.full_name, '
      'email = excluded.email, updated_at = excluded.updated_at',
      [
        user.id,
        user.name ?? '',
        user.email,
        DateTime.now().toUtc().millisecondsSinceEpoch,
      ],
    );
  });

  Future<UserDto?> getCachedUser() async {
    final rows = await _database.db.query(DbTables.users, limit: 1);
    if (rows.isEmpty) return null;
    final row = rows.single;
    final name = row['full_name']! as String;
    return UserDto(
      id: row['user_id']! as String,
      email: row['email']! as String,
      name: name.isEmpty ? null : name,
    );
  }

  /// Removes the tokens and every cached row for the user.
  Future<void> clear() async {
    await _secureStorage.clearAll();
    await _database.clearUserData();
  }
}
