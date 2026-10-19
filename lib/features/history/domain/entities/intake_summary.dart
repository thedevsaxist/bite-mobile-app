import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'intake_summary.freezed.dart';

/// One calendar day's intake in the user's timezone. Disputed meals don't
/// count.
@freezed
abstract class DaySummary with _$DaySummary {
  const factory DaySummary({
    required DateTime date,
    required Nutrients totals,
    required int mealCount,

    /// The reference that applied that day; null before the profile existed.
    int? dailyCalorieReference,
  }) = _DaySummary;
}

/// Intake over a range of days (report §3.4.1 FR 19).
@freezed
abstract class IntakeSummary with _$IntakeSummary {
  const factory IntakeSummary({
    /// Every day in the range, including empty ones.
    required List<DaySummary> days,
    required Nutrients totals,
    required int loggedDays,

    /// Averaged over days with at least one meal.
    required Nutrients averagePerLoggedDay,
  }) = _IntakeSummary;
}
