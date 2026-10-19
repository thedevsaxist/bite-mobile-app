import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/datasources/nutrition_api_service.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/nutrition_repository.dart';

part 'nutrition_repository_impl.g.dart';

@riverpod
NutritionRepository nutritionRepository(Ref ref) =>
    NutritionRepositoryImpl(ref.watch(nutritionApiServiceProvider));

class NutritionRepositoryImpl implements NutritionRepository {
  NutritionRepositoryImpl(this._api);

  final NutritionApiService _api;

  @override
  FutureEither<List<NutritionFood>> searchFoods(String query) =>
      guard(() async {
        final response = await _api.searchFoods(query: query.trim());
        return [for (final food in response.foods) food.toEntity()];
      });

  @override
  FutureEither<NutritionFood> getFood(String id) =>
      guard(() async => (await _api.getFood(id)).food.toEntity());
}
