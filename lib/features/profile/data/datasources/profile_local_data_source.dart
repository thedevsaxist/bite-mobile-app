import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

import 'package:calorie_estimator/core/storage/app_database.dart';
import 'package:calorie_estimator/features/profile/domain/entities/saved_profile.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

part 'profile_local_data_source.g.dart';

@riverpod
ProfileLocalDataSource profileLocalDataSource(Ref ref) =>
    ProfileLocalDataSource(ref.watch(appDatabaseProvider));

/// Cached copy of the signed-in user's profile (`user_profiles`), keyed by
/// the user row the auth feature caches at sign-in.
class ProfileLocalDataSource {
  ProfileLocalDataSource(this._database);

  final AppDatabase _database;

  Database get _db => _database.db;

  Future<SavedProfile?> get() async {
    final rows = await _db.query(DbTables.userProfiles, limit: 1);
    if (rows.isEmpty) return null;
    final row = rows.single;
    return SavedProfile(
      profile: UserProfile(
        age: row['age']! as int,
        sex: Sex.values.byName(row['sex']! as String),
        heightCm: (row['height_cm']! as num).toDouble(),
        weightKg: (row['weight_kg']! as num).toDouble(),
        activityLevel: ActivityLevel.values.byName(
          row['activity_level']! as String,
        ),
        goal: WeightGoal.values.byName(row['weight_goal']! as String),
      ),
      dailyCalorieReference: row['daily_calorie_reference']! as int,
    );
  }

  /// Does nothing if no user is cached (the profile row needs one).
  Future<void> save(SavedProfile saved) async {
    final users = await _db.query(
      DbTables.users,
      columns: ['user_id'],
      limit: 1,
    );
    if (users.isEmpty) return;

    final profile = saved.profile;
    await _db.insert(DbTables.userProfiles, {
      'user_id': users.single['user_id'],
      'age': profile.age,
      'sex': profile.sex.name,
      'height_cm': profile.heightCm,
      'weight_kg': profile.weightKg,
      'activity_level': profile.activityLevel.name,
      'weight_goal': profile.goal.name,
      'daily_calorie_reference': saved.dailyCalorieReference,
      'updated_at': DateTime.now().toUtc().millisecondsSinceEpoch,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> delete() => _db.delete(DbTables.userProfiles);
}
