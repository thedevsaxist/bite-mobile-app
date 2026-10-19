import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';
import 'package:calorie_estimator/features/history/domain/entities/intake_summary.dart';

part 'summary_dto.freezed.dart';
part 'summary_dto.g.dart';

@freezed
abstract class DaySummaryDto with _$DaySummaryDto {
  const factory DaySummaryDto({
    /// A calendar date, `2026-10-15`.
    required String date,
    required NutrientsDto totals,
    required int mealCount,
    int? dailyCalorieReference,
  }) = _DaySummaryDto;
  const DaySummaryDto._();

  factory DaySummaryDto.fromJson(Map<String, dynamic> json) =>
      _$DaySummaryDtoFromJson(json);

  DaySummary toEntity() => DaySummary(
    // A local calendar day, not an instant.
    date: DateTime.parse(date),
    totals: totals.toEntity(),
    mealCount: mealCount,
    dailyCalorieReference: dailyCalorieReference,
  );
}

/// `GET /summary/daily`: `{"summary": {...}}`.
@freezed
abstract class DailySummaryResponseDto with _$DailySummaryResponseDto {
  const factory DailySummaryResponseDto({required DaySummaryDto summary}) =
      _DailySummaryResponseDto;

  factory DailySummaryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DailySummaryResponseDtoFromJson(json);
}

@freezed
abstract class RangeSummaryDto with _$RangeSummaryDto {
  const factory RangeSummaryDto({
    required List<DaySummaryDto> days,
    required NutrientsDto totals,
    required int loggedDays,
    required NutrientsDto averagePerLoggedDay,
  }) = _RangeSummaryDto;
  const RangeSummaryDto._();

  factory RangeSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$RangeSummaryDtoFromJson(json);

  IntakeSummary toEntity() => IntakeSummary(
    days: [for (final day in days) day.toEntity()],
    totals: totals.toEntity(),
    loggedDays: loggedDays,
    averagePerLoggedDay: averagePerLoggedDay.toEntity(),
  );
}

/// `GET /summary`: `{"summary": {...}}`.
@freezed
abstract class RangeSummaryResponseDto with _$RangeSummaryResponseDto {
  const factory RangeSummaryResponseDto({required RangeSummaryDto summary}) =
      _RangeSummaryResponseDto;

  factory RangeSummaryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RangeSummaryResponseDtoFromJson(json);
}
