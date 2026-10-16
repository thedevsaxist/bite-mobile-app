import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/home/domain/entities/daily_summary.dart';

part 'home_view_model.freezed.dart';
part 'home_view_model.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required String userName,
    required DailySummary summary,
  }) = _HomeState;
}

/// 04 Home (today).
@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<HomeState> build() async {
    // TODO: load the user via GetCurrentUserUseCase and today's summary via
    // GetDailySummaryUseCase. Sample data below matches the design.
    final today = DateTime.now();
    DateTime at(int hour, int minute) =>
        DateTime(today.year, today.month, today.day, hour, minute);

    return HomeState(
      userName: 'Chidiebube Iroezindu',
      summary: DailySummary(
        eatenCalories: 1240,
        dailyReference: 2150,
        proteinGrams: 52,
        carbsGrams: 168,
        fatGrams: 41,
        meals: [
          MealRecord(
            id: 'sample-lunch',
            title: 'Jollof rice, plantain, chicken',
            mealType: MealType.lunch,
            eatenAt: at(13, 20),
            totalCalories: 860,
          ),
          MealRecord(
            id: 'sample-breakfast',
            title: 'Akara and pap',
            mealType: MealType.breakfast,
            eatenAt: at(8, 5),
            totalCalories: 380,
          ),
        ],
      ),
    );
  }

  Future<void> refresh() async {
    // TODO: re-fetch today's summary (pull to refresh, after saving a meal).
    ref.invalidateSelf();
    await future;
  }
}
