import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_daily_summary_usecase.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_meals_usecase.dart';
import 'package:calorie_estimator/features/history/presentation/view_models/meal_changes.dart';
import 'package:calorie_estimator/features/home/domain/entities/daily_summary.dart';
import 'package:calorie_estimator/features/profile/presentation/view_models/profile_changes.dart';

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
    // Reload when a meal or the daily reference changes.
    ref
      ..watch(mealChangesProvider)
      ..watch(profileChangesProvider);

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final (user, summary, meals) = await (
      ref.read(getCurrentUserUseCaseProvider).call(const NoParams()),
      ref.read(getDailySummaryUseCaseProvider).call(today),
      ref.read(getMealsUseCaseProvider).call((
        from: today,
        to: today.add(const Duration(days: 1)),
      )),
    ).wait;

    final day = summary.getOrElse((failure) => throw failure);
    final totals = day.totals;
    return HomeState(
      userName: user.getOrElse((failure) => throw failure).displayName,
      summary: DailySummary(
        // Disputed meals are left out of the totals until corrected.
        eatenCalories: totals.calories.round(),
        dailyReference: day.dailyCalorieReference,
        proteinGrams: totals.protein.round(),
        carbsGrams: totals.carbohydrates.round(),
        fatGrams: totals.fat.round(),
        meals: meals.getOrElse((failure) => throw failure),
      ),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
