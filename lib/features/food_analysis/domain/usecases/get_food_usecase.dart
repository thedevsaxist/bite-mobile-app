import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/repositories/nutrition_repository_impl.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/nutrition_repository.dart';

part 'get_food_usecase.g.dart';

class GetFoodUseCase implements UseCase<NutritionFood, String> {
  const GetFoodUseCase(this._repository);

  final NutritionRepository _repository;

  @override
  FutureEither<NutritionFood> call(String params) =>
      _repository.getFood(params);
}

@riverpod
GetFoodUseCase getFoodUseCase(Ref ref) =>
    GetFoodUseCase(ref.watch(nutritionRepositoryProvider));
