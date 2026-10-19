import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

void main() {
  // Per 100 g; a typical serving is 300 g ("1 plate").
  const jollof = NutritionFood(
    id: 'ref1',
    key: 'jollof_rice',
    name: 'Jollof rice',
    servingSize: 100,
    perServingSize: Nutrients(
      calories: 165,
      protein: 3,
      carbohydrates: 27,
      fat: 5,
    ),
    typicalServingSize: 300,
    typicalServingLabel: '1 plate',
  );

  test('matches the backend: Cᵢ = Sᵢ × Cₛ', () {
    expect(jollof.nutrientsFor(150, PortionUnit.grams).calories, 247.5);
    expect(jollof.nutrientsFor(1, PortionUnit.servings).calories, 495);
    // Millilitres count as grams.
    expect(jollof.nutrientsFor(100, PortionUnit.millilitres).calories, 165);
  });

  test('converts between servings and grams', () {
    expect(jollof.convert(1, PortionUnit.servings, PortionUnit.grams), 300);
    expect(jollof.convert(150, PortionUnit.grams, PortionUnit.servings), 0.5);
    expect(
      jollof.convert(150, PortionUnit.grams, PortionUnit.millilitres),
      150,
    );
  });
}
