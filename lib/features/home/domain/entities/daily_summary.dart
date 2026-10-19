import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'daily_summary.freezed.dart';

/// Today's intake against the user's daily calorie reference.
@freezed
abstract class DailySummary with _$DailySummary {
  const factory DailySummary({
    required int eatenCalories,

    /// `null` until the user sets up their profile.
    required int? dailyReference,
    required int proteinGrams,
    required int carbsGrams,
    required int fatGrams,
    required List<MealRecord> meals,
  }) = _DailySummary;
  const DailySummary._();

  /// `null` without a daily reference.
  int? get remainingCalories => switch (dailyReference) {
    final reference? => (reference - eatenCalories).clamp(0, reference),
    null => null,
  };

  /// 0–1, capped at 1 when over the reference.
  double get progress => switch (dailyReference) {
    final reference? when reference > 0 => (eatenCalories / reference).clamp(
      0,
      1,
    ),
    _ => 0,
  };
}
