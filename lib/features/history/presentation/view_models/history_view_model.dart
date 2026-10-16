import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'history_view_model.freezed.dart';
part 'history_view_model.g.dart';

enum HistoryPeriod {
  day('Day'),
  week('Week'),
  month('Month');

  const HistoryPeriod(this.label);

  final String label;
}

/// Meals eaten on one day, under a heading like "Today · 1,240 kcal".
@freezed
abstract class MealDayGroup with _$MealDayGroup {
  const factory MealDayGroup({
    required String label,
    required int totalCalories,
    required List<MealRecord> meals,
  }) = _MealDayGroup;
}

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    required HistoryPeriod period,
    required String rangeLabel,
    required int dailyAverage,
    required int dailyReference,
    required List<DailyIntake> days,
    required List<MealDayGroup> groups,
  }) = _HistoryState;
}

/// 11 History.
@riverpod
class HistoryViewModel extends _$HistoryViewModel {
  @override
  Future<HistoryState> build() async => _load(HistoryPeriod.week);

  Future<void> setPeriod(HistoryPeriod period) async {
    if (state.value?.period == period) return;
    // Riverpod keeps the previous data while loading, so the chart stays up.
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _load(period));
  }

  Future<HistoryState> _load(HistoryPeriod period) async {
    // TODO: fetch via GetIntakeHistoryUseCase(period). The sample week below
    // matches the design and is returned for every period for now.
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    DateTime at(DateTime day, int hour, int minute) =>
        DateTime(day.year, day.month, day.day, hour, minute);
    final yesterday = today.subtract(const Duration(days: 1));

    const weekCalories = [2070, 1900, 2310, 1780, 2140, 1750, 1240];

    return HistoryState(
      period: period,
      rangeLabel: '10–16 Oct',
      dailyAverage: 1871,
      dailyReference: 2150,
      days: [
        for (final (i, kcal) in weekCalories.indexed)
          DailyIntake(
            date: today.subtract(Duration(days: weekCalories.length - 1 - i)),
            calories: kcal,
          ),
      ],
      groups: [
        MealDayGroup(
          label: 'Today',
          totalCalories: 1240,
          meals: [
            MealRecord(
              id: 'sample-lunch',
              title: 'Jollof rice, plantain, chicken',
              mealType: MealType.lunch,
              eatenAt: at(today, 13, 20),
              totalCalories: 860,
            ),
            MealRecord(
              id: 'sample-breakfast',
              title: 'Akara and pap',
              mealType: MealType.breakfast,
              eatenAt: at(today, 8, 5),
              totalCalories: 380,
            ),
          ],
        ),
        MealDayGroup(
          label: 'Yesterday',
          totalCalories: 1730,
          meals: [
            MealRecord(
              id: 'sample-dinner',
              title: 'Egusi soup and eba',
              mealType: MealType.dinner,
              eatenAt: at(yesterday, 19, 40),
              totalCalories: 720,
            ),
          ],
        ),
      ],
    );
  }
}
