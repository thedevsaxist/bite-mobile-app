import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/datasources/meals_api_service.dart';
import 'package:calorie_estimator/features/history/data/models/meal_changes_request.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/repositories/meals_repository.dart';

part 'meals_repository_impl.g.dart';

@riverpod
MealsRepository mealsRepository(Ref ref) =>
    MealsRepositoryImpl(ref.watch(mealsApiServiceProvider));

// TODO: cache meals in AppDatabase (meal_records / meal_items) for offline
// History and Home; the tables need a migration for nullable portions and
// nutrients and the disputed status first.
class MealsRepositoryImpl implements MealsRepository {
  MealsRepositoryImpl(this._api);

  final MealsApiService _api;

  @override
  FutureEither<List<MealRecord>> getMeals({
    required DateTime from,
    required DateTime to,
  }) => guard(() async {
    final response = await _api.getMeals(
      from: from.toUtc().toIso8601String(),
      to: to.toUtc().toIso8601String(),
    );
    return [for (final meal in response.meals) meal.toEntity()];
  });

  @override
  FutureEither<MealRecord> getMeal(String id) =>
      guard(() async => (await _api.getMeal(id)).meal.toEntity());

  @override
  FutureEither<MealRecord> updateItems(String mealId, List<MealItem> items) =>
      guard(() async {
        final response = await _api.updateMeal(
          mealId,
          MealChangesRequest.withItems(items),
        );
        return response.meal.toEntity();
      });
}
