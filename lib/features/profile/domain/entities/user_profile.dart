import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

enum Sex {
  male('Male', 1500),
  female('Female', 1200);

  const Sex(this.label, this.minimumDailyCalories);

  final String label;

  /// Commonly cited minimum daily intake without medical supervision; the
  /// daily reference never goes below it (unless maintenance is lower).
  final int minimumDailyCalories;
}

enum ActivityLevel {
  sedentary('Not very active', 'mostly sitting', 1.2),
  lightlyActive('Lightly active', 'walks, light exercise', 1.375),
  active('Active', 'exercise 3–5 days a week', 1.55),
  veryActive('Very active', 'hard exercise daily', 1.725),
  extremelyActive(
    'Extremely active',
    'physical job or training twice a day',
    1.9,
  );

  const ActivityLevel(this.label, this.description, this.multiplier);

  final String label;
  final String description;

  /// Multiplier applied to resting energy use.
  final double multiplier;
}

enum WeightGoal {
  lose('Lose weight', -500),
  maintain('Maintain', 0),
  gain('Gain weight', 500);

  const WeightGoal(this.label, this.dailyAdjustment);

  final String label;

  /// kcal added to (or removed from) maintenance calories, about 0.5 kg a
  /// week either way.
  final int dailyAdjustment;
}

/// Information used to work out the user's daily calorie reference
/// (report §3.4.1, "User Profile Management").
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int age,
    required Sex sex,
    required double heightCm,
    required double weightKg,
    required ActivityLevel activityLevel,
    required WeightGoal goal,
  }) = _UserProfile;
  const UserProfile._();

  // The ranges the backend accepts, which keep the equation within the adult
  // population it was developed for.
  static const ageRange = (min: 18, max: 120);
  static const heightCmRange = (min: 50, max: 275);
  static const weightKgRange = (min: 20, max: 500);

  /// A local estimate of daily calories, rounded to the nearest 10 kcal.
  /// Mirrors the backend: Mifflin–St Jeor × activity, adjusted for the goal,
  /// never below the minimum for [sex] unless maintenance is lower.
  ///
  /// Used to preview the reference while editing; the backend's value is the
  /// one that gets stored.
  int get estimatedDailyCalories {
    final restingKcal =
        10 * weightKg +
        6.25 * heightCm -
        5 * age +
        (sex == Sex.male ? 5 : -161);
    final maintenance = restingKcal * activityLevel.multiplier;
    final floor = math.min(sex.minimumDailyCalories.toDouble(), maintenance);
    final kcal = math.max(maintenance + goal.dailyAdjustment, floor);
    return (kcal / 10).round() * 10;
  }
}
