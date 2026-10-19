import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_intake_summary_usecase.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_meals_usecase.dart';
import 'package:calorie_estimator/features/history/presentation/view_models/meal_changes.dart';
import 'package:calorie_estimator/features/profile/presentation/view_models/profile_changes.dart';

part 'history_view_model.freezed.dart';
part 'history_view_model.g.dart';

enum HistoryPeriod {
  day('Day', 1),
  week('Week', 7),
  month('Month', 30);

  const HistoryPeriod(this.label, this.days);

  final String label;

  /// Calendar days covered, ending today.
  final int days;
}

/// Meals eaten on one day, under a heading like "Today · 1,240 kcal".
@freezed
abstract class MealDayGroup with _$MealDayGroup {
  const factory MealDayGroup({
    required String label,

    /// Disputed meals aren't counted, as in the summaries.
    required int totalCalories,
    required List<MealRecord> meals,
  }) = _MealDayGroup;
}

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    required HistoryPeriod period,
    required String rangeLabel,

    /// Over the days with at least one meal.
    required int dailyAverage,

    /// Today's reference; null without a profile.
    int? dailyReference,
    required List<DailyIntake> days,
    required List<MealDayGroup> groups,
  }) = _HistoryState;
}

/// 11 History.
@riverpod
class HistoryViewModel extends _$HistoryViewModel {
  HistoryPeriod _period = HistoryPeriod.week;

  @override
  Future<HistoryState> build() async {
    // Reload when a meal or the daily reference changes.
    ref
      ..watch(mealChangesProvider)
      ..watch(profileChangesProvider);
    return _load(_period);
  }

  Future<void> setPeriod(HistoryPeriod period) async {
    if (_period == period && state.hasValue) return;
    _period = period;
    // Riverpod keeps the previous data while loading, so the chart stays up.
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _load(period));
  }

  Future<HistoryState> _load(HistoryPeriod period) async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final from = today.subtract(Duration(days: period.days - 1));
    final endOfToday = today.add(const Duration(days: 1));

    final (summaryResult, mealsResult) = await (
      ref.read(getIntakeSummaryUseCaseProvider).call((from: from, to: today)),
      ref.read(getMealsUseCaseProvider).call((from: from, to: endOfToday)),
    ).wait;
    final summary = summaryResult.getOrElse((failure) => throw failure);
    final meals = mealsResult.getOrElse((failure) => throw failure);

    return HistoryState(
      period: period,
      rangeLabel: formatDateRange(from, today),
      dailyAverage: summary.averagePerLoggedDay.calories.round(),
      dailyReference: summary.days.lastOrNull?.dailyCalorieReference,
      days: [
        for (final day in summary.days)
          DailyIntake(date: day.date, calories: day.totals.calories.round()),
      ],
      groups: _groupByDay(meals, today),
    );
  }

  /// Newest day first, as the meals arrive.
  static List<MealDayGroup> _groupByDay(
    List<MealRecord> meals,
    DateTime today,
  ) {
    final byDay = <DateTime, List<MealRecord>>{};
    for (final meal in meals) {
      final eaten = meal.eatenAt;
      (byDay[DateTime(eaten.year, eaten.month, eaten.day)] ??= []).add(meal);
    }
    final yesterday = today.subtract(const Duration(days: 1));
    return [
      for (final MapEntry(key: day, value: dayMeals) in byDay.entries)
        MealDayGroup(
          label: switch (day) {
            _ when day == today => 'Today',
            _ when day == yesterday => 'Yesterday',
            _ => formatDayHeading(day),
          },
          totalCalories: dayMeals
              .where((meal) => !meal.isDisputed)
              .fold(0, (sum, meal) => sum + meal.totalCalories),
          meals: dayMeals,
        ),
    ];
  }
}
