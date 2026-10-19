import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';

abstract interface class NutritionRepository {
  /// Foods whose name or aliases contain [query]; names starting with it
  /// first.
  FutureEither<List<NutritionFood>> searchFoods(String query);

  FutureEither<NutritionFood> getFood(String id);
}
