import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analysis.freezed.dart';

enum PortionUnit {
  slices('slices', 'Slices', 1),
  pieces('pieces', 'Pieces', 1),
  servings('servings', 'Servings', 0.5),
  cups('cups', 'Cups', 0.5),
  grams('g', 'Grams', 10);

  const PortionUnit(this.symbol, this.label, this.step);

  /// Shown after the quantity, e.g. "6 slices", "150 g".
  final String symbol;

  /// Shown on the unit picker.
  final String label;

  /// How much the − / + buttons change the quantity by.
  final double step;
}

/// Rough meal size the user can give before analysis (Meal details screen).
enum MealPortion {
  small('Small'),
  medium('Medium'),
  large('Large');

  const MealPortion(this.label);

  final String label;
}

/// One food the AI recognised in the photo (report §3.5.3, "Recognised Food
/// Items"), with its estimated nutrition.
@freezed
abstract class RecognisedFoodItem with _$RecognisedFoodItem {
  const factory RecognisedFoodItem({
    required String id,
    required String name,
    required String portionDescription,
    required double quantity,
    required PortionUnit unit,
    required int calories,
    required int proteinGrams,
    required int carbsGrams,
    required int fatGrams,
    @Default(false) bool wasModified,
  }) = _RecognisedFoodItem;
}

/// The result of analysing one photo (report §3.5.3, "Food Analyses").
@freezed
abstract class FoodAnalysis with _$FoodAnalysis {
  const factory FoodAnalysis({
    required String id,
    required List<RecognisedFoodItem> items,
  }) = _FoodAnalysis;
  const FoodAnalysis._();

  int get totalCalories => items.fold(0, (sum, i) => sum + i.calories);
  int get totalProtein => items.fold(0, (sum, i) => sum + i.proteinGrams);
  int get totalCarbs => items.fold(0, (sum, i) => sum + i.carbsGrams);
  int get totalFat => items.fold(0, (sum, i) => sum + i.fatGrams);
}

/// Progress of an analysis request, shown on the Analysing screen.
enum AnalysisStep {
  checkingPhoto('Photo looks clear'),
  findingFoods('Finding the foods'),
  estimatingCalories('Estimating calories'),
  done('Done');

  const AnalysisStep(this.label);

  final String label;
}
