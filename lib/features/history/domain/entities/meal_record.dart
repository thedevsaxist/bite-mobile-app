import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_record.freezed.dart';

enum MealType {
  breakfast('Breakfast'),
  lunch('Lunch'),
  dinner('Dinner'),
  snack('Snack');

  const MealType(this.label);

  final String label;

  /// The meal a time of day most likely belongs to.
  static MealType forTime(DateTime time) => switch (time.hour) {
    >= 5 && < 11 => breakfast,
    >= 11 && < 16 => lunch,
    >= 16 && < 22 => dinner,
    _ => snack,
  };
}

/// A meal saved to the user's food-intake history (report §3.5.3,
/// "Meal Records").
@freezed
abstract class MealRecord with _$MealRecord {
  const factory MealRecord({
    required String id,
    required String title,
    required MealType mealType,
    required DateTime eatenAt,
    required int totalCalories,
  }) = _MealRecord;
}

/// Estimated calories eaten on one day, for the history chart.
@freezed
abstract class DailyIntake with _$DailyIntake {
  const factory DailyIntake({required DateTime date, required int calories}) =
      _DailyIntake;
}
