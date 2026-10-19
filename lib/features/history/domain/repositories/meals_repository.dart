import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

abstract interface class MealsRepository {
  /// Meals eaten between [from] and [to], newest first.
  FutureEither<List<MealRecord>> getMeals({
    required DateTime from,
    required DateTime to,
  });

  /// One meal with its items and photo link.
  FutureEither<MealRecord> getMeal(String id);

  /// Replaces the meal's items; the backend recalculates the nutrients and
  /// counts the meal as reviewed (a disputed one is restored). Every item
  /// needs a portion.
  FutureEither<MealRecord> updateItems(String mealId, List<MealItem> items);
}
