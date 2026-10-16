import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'daily_summary.freezed.dart';

/// Today's intake against the user's daily calorie reference.
@freezed
abstract class DailySummary with _$DailySummary {
  const factory DailySummary({
    required int eatenCalories,
    required int dailyReference,
    required int proteinGrams,
    required int carbsGrams,
    required int fatGrams,
    required List<MealRecord> meals,
  }) = _DailySummary;
  const DailySummary._();

  int get remainingCalories =>
      (dailyReference - eatenCalories).clamp(0, dailyReference);

  /// 0–1, capped at 1 when over the reference.
  double get progress =>
      dailyReference == 0 ? 0 : (eatenCalories / dailyReference).clamp(0, 1);
}
