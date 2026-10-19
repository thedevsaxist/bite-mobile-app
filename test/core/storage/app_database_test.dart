import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:calorie_estimator/core/storage/app_database.dart';

void main() {
  late AppDatabase database;

  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  setUp(() async {
    database = await AppDatabase.open(path: inMemoryDatabasePath);
  });

  tearDown(() => database.close());

  Future<void> insertUserWithMeal() async {
    final db = database.db;
    await db.insert(DbTables.users, {
      'user_id': 'u1',
      'full_name': 'Ada',
      'email': 'ada@example.com',
      'updated_at': 0,
    });
    await db.insert(DbTables.userProfiles, {
      'user_id': 'u1',
      'age': 22,
      'sex': 'female',
      'height_cm': 165.0,
      'weight_kg': 60.0,
      'activity_level': 'active',
      'weight_goal': 'maintain',
      'daily_calorie_reference': 2000,
      'updated_at': 0,
    });
    await db.insert(DbTables.mealRecords, {
      'meal_id': 'm1',
      'user_id': 'u1',
      'title': 'Jollof rice',
      'meal_type': 'lunch',
      'meal_date': 0,
      'total_calories': 640,
      'updated_at': 0,
    });
    await db.insert(DbTables.mealItems, {
      'meal_item_id': 'i1',
      'meal_id': 'm1',
      'position': 0,
      'food_name': 'Jollof rice',
      'portion_description': '1 plate',
      'quantity': 1.0,
      'quantity_unit': 'servings',
      'calories': 640,
      'protein_grams': 12,
      'carbs_grams': 98,
      'fat_grams': 20,
    });
  }

  Future<int> count(String table) async =>
      (await database.db.query(table)).length;

  test('creates the schema at the latest version', () async {
    await insertUserWithMeal();
    expect(await database.db.getVersion(), 1);
    expect(await count(DbTables.mealItems), 1);
  });

  test('clearUserData cascades to profiles, meals and items', () async {
    await insertUserWithMeal();
    await database.clearUserData();
    for (final table in [
      DbTables.users,
      DbTables.userProfiles,
      DbTables.mealRecords,
      DbTables.mealItems,
    ]) {
      expect(await count(table), 0, reason: table);
    }
  });

  test('rejects a meal for an unknown user', () async {
    await expectLater(
      database.db.insert(DbTables.mealRecords, {
        'meal_id': 'm1',
        'user_id': 'missing',
        'title': 'Toast',
        'meal_type': 'breakfast',
        'meal_date': 0,
        'total_calories': 120,
        'updated_at': 0,
      }),
      throwsA(isA<DatabaseException>()),
    );
  });
}
