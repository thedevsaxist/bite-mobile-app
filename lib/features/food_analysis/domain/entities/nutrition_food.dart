import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'nutrition_food.freezed.dart';

/// A food in the nutritional reference data, with its values per
/// [servingSize] grams (100 g).
@freezed
abstract class NutritionFood with _$NutritionFood {
  const factory NutritionFood({
    required String id,
    required String key,
    required String name,
    required double servingSize,
    required Nutrients perServingSize,

    /// Grams in one typical serving, e.g. jollof rice: 300 ("1 plate").
    required double typicalServingSize,
    required String typicalServingLabel,
  }) = _NutritionFood;
  const NutritionFood._();

  FoodReference get reference => FoodReference(id: id, key: key, name: name);

  /// The same calculation as the backend (Cᵢ = Sᵢ × Cₛ): grams and
  /// millilitres count the same, a serving is [typicalServingSize] grams.
  Nutrients nutrientsFor(double quantity, PortionUnit unit) {
    final grams = unit == PortionUnit.servings
        ? quantity * typicalServingSize
        : quantity;
    return perServingSize.scale(grams / servingSize);
  }

  /// [quantity] in [from] expressed in [to], e.g. 1 serving → 300 g.
  double convert(double quantity, PortionUnit from, PortionUnit to) {
    if ((from == PortionUnit.servings) == (to == PortionUnit.servings)) {
      return quantity;
    }
    return to == PortionUnit.servings
        ? quantity / typicalServingSize
        : quantity * typicalServingSize;
  }
}
