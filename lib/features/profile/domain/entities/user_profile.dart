import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

enum Sex {
  male('Male'),
  female('Female');

  const Sex(this.label);

  final String label;
}

enum ActivityLevel {
  sedentary('Not very active', 'mostly sitting', 1.2),
  lightlyActive('Lightly active', 'walks, light exercise', 1.375),
  active('Active', 'exercise 3–5 days a week', 1.55),
  veryActive('Very active', 'hard exercise daily', 1.725);

  const ActivityLevel(this.label, this.description, this.multiplier);

  final String label;
  final String description;

  /// Multiplier applied to resting energy use.
  final double multiplier;
}

enum WeightGoal {
  lose('Lose weight', -500),
  maintain('Maintain', 0),
  gain('Gain weight', 300);

  const WeightGoal(this.label, this.dailyAdjustment);

  final String label;

  /// kcal added to (or removed from) maintenance calories.
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

  /// A local estimate of daily calories (Mifflin–St Jeor × activity, adjusted
  /// for the goal), rounded to the nearest 10 kcal.
  ///
  /// Used to preview the reference while editing; the backend's value is the
  /// one that gets stored.
  int get estimatedDailyCalories {
    final restingKcal =
        10 * weightKg +
        6.25 * heightCm -
        5 * age +
        (sex == Sex.male ? 5 : -161);
    final kcal = restingKcal * activityLevel.multiplier + goal.dailyAdjustment;
    return (kcal / 10).round() * 10;
  }
}
