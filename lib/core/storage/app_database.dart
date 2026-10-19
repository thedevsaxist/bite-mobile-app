import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'app_database.g.dart';

/// Opened in `main()` before the app starts and injected with
/// `appDatabaseProvider.overrideWithValue(...)`.
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) =>
    throw UnimplementedError('appDatabaseProvider must be overridden');

/// Table names, for local data sources.
abstract final class DbTables {
  static const users = 'users';
  static const userProfiles = 'user_profiles';
  static const mealRecords = 'meal_records';
  static const mealItems = 'meal_items';
}

/// On-device SQLite cache of the signed-in user's data, so Home and History
/// work offline (report §3.5.3). The backend stays the source of truth; local
/// data sources overwrite rows with each successful fetch.
///
/// Conventions: columns follow the report's snake_case names, timestamps are
/// UTC milliseconds since epoch (INTEGER), enums are stored by `name` (TEXT)
/// and booleans as 0 / 1.
class AppDatabase {
  AppDatabase._(this.db);

  final Database db;

  static const _fileName = 'bite.db';

  /// Each entry upgrades the schema by one version; append new migrations,
  /// never edit shipped ones.
  static final List<Future<void> Function(Transaction txn)> _migrations = [
    _createInitialSchema,
  ];

  /// Tests pass `inMemoryDatabasePath`.
  static Future<AppDatabase> open({String? path}) async {
    final db = await openDatabase(
      path ?? p.join(await getDatabasesPath(), _fileName),
      version: _migrations.length,
      onConfigure: (db) => db.execute('PRAGMA foreign_keys = ON'),
      onCreate: (db, version) => _migrate(db, from: 0, to: version),
      onUpgrade: (db, from, to) => _migrate(db, from: from, to: to),
    );
    return AppDatabase._(db);
  }

  static Future<void> _migrate(
    Database db, {
    required int from,
    required int to,
  }) => db.transaction((txn) async {
    for (var version = from; version < to; version++) {
      await _migrations[version](txn);
    }
  });

  /// Removes everything cached for the signed-in user, e.g. on log out.
  /// Profiles, meals and meal items cascade from `users`.
  Future<void> clearUserData() => db.delete(DbTables.users);

  Future<void> close() => db.close();
}

Future<void> _createInitialSchema(Transaction txn) async {
  await txn.execute('''
    CREATE TABLE ${DbTables.users} (
      user_id TEXT PRIMARY KEY,
      full_name TEXT NOT NULL,
      email TEXT NOT NULL,
      updated_at INTEGER NOT NULL
    )
  ''');

  // Includes the latest dietary reference, which Home and Settings show
  // alongside the profile.
  await txn.execute('''
    CREATE TABLE ${DbTables.userProfiles} (
      user_id TEXT PRIMARY KEY
        REFERENCES ${DbTables.users} (user_id) ON DELETE CASCADE,
      age INTEGER NOT NULL,
      sex TEXT NOT NULL,
      height_cm REAL NOT NULL,
      weight_kg REAL NOT NULL,
      activity_level TEXT NOT NULL,
      weight_goal TEXT NOT NULL,
      daily_calorie_reference INTEGER,
      updated_at INTEGER NOT NULL
    )
  ''');

  await txn.execute('''
    CREATE TABLE ${DbTables.mealRecords} (
      meal_id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL
        REFERENCES ${DbTables.users} (user_id) ON DELETE CASCADE,
      analysis_id TEXT,
      title TEXT NOT NULL,
      meal_type TEXT NOT NULL,
      meal_date INTEGER NOT NULL,
      total_calories INTEGER NOT NULL,
      protein_grams INTEGER NOT NULL DEFAULT 0,
      carbs_grams INTEGER NOT NULL DEFAULT 0,
      fat_grams INTEGER NOT NULL DEFAULT 0,
      image_url TEXT,
      validated_by_user INTEGER NOT NULL DEFAULT 0,
      updated_at INTEGER NOT NULL
    )
  ''');
  await txn.execute(
    'CREATE INDEX idx_meal_records_user_date '
    'ON ${DbTables.mealRecords} (user_id, meal_date)',
  );

  await txn.execute('''
    CREATE TABLE ${DbTables.mealItems} (
      meal_item_id TEXT PRIMARY KEY,
      meal_id TEXT NOT NULL
        REFERENCES ${DbTables.mealRecords} (meal_id) ON DELETE CASCADE,
      position INTEGER NOT NULL,
      food_name TEXT NOT NULL,
      portion_description TEXT NOT NULL,
      quantity REAL NOT NULL,
      quantity_unit TEXT NOT NULL,
      calories INTEGER NOT NULL,
      protein_grams INTEGER NOT NULL,
      carbs_grams INTEGER NOT NULL,
      fat_grams INTEGER NOT NULL,
      was_modified INTEGER NOT NULL DEFAULT 0
    )
  ''');
  await txn.execute(
    'CREATE INDEX idx_meal_items_meal '
    'ON ${DbTables.mealItems} (meal_id, position)',
  );
}
