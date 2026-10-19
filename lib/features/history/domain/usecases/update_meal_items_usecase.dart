import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/repositories/meals_repository_impl.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/domain/repositories/meals_repository.dart';

part 'update_meal_items_usecase.g.dart';

/// Saves the user's corrections to a meal.
class UpdateMealItemsUseCase
    implements UseCase<MealRecord, ({String mealId, List<MealItem> items})> {
  const UpdateMealItemsUseCase(this._repository);

  final MealsRepository _repository;

  @override
  FutureEither<MealRecord> call(
    ({String mealId, List<MealItem> items}) params,
  ) => _repository.updateItems(params.mealId, params.items);
}

@riverpod
UpdateMealItemsUseCase updateMealItemsUseCase(Ref ref) =>
    UpdateMealItemsUseCase(ref.watch(mealsRepositoryProvider));
