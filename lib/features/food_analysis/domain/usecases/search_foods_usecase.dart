import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/repositories/nutrition_repository_impl.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/nutrition_repository.dart';

part 'search_foods_usecase.g.dart';

class SearchFoodsUseCase implements UseCase<List<NutritionFood>, String> {
  const SearchFoodsUseCase(this._repository);

  final NutritionRepository _repository;

  @override
  FutureEither<List<NutritionFood>> call(String params) =>
      _repository.searchFoods(params);
}

@riverpod
SearchFoodsUseCase searchFoodsUseCase(Ref ref) =>
    SearchFoodsUseCase(ref.watch(nutritionRepositoryProvider));
