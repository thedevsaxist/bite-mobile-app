import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'food_analysis.freezed.dart';

/// Rough meal size the user can give before analysis (Meal details screen).
enum MealPortion {
  small('Small'),
  medium('Medium'),
  large('Large');

  const MealPortion(this.label);

  final String label;
}

/// Backend error codes for a photo that can't be analysed, which send the
/// user to the "Couldn't analyse" screen instead of showing an error.
abstract final class UnreadablePhotoCodes {
  static const all = {
    'IMAGE_TOO_BLURRY',
    'IMAGE_TOO_SMALL',
    'IMAGE_TOO_LARGE',
    'INVALID_IMAGE',
    'UNSUPPORTED_IMAGE_TYPE',
    'LIMIT_FILE_SIZE',
    'NO_FOOD_DETECTED',
    'AI_REFUSED',
  };
}

/// The result of analysing one photo (report §3.5.3, "Food Analyses"),
/// exactly as the AI produced it. Corrections go into the meal record.
@freezed
abstract class FoodAnalysis with _$FoodAnalysis {
  const factory FoodAnalysis({
    required String id,
    required List<MealItem> items,
    required DateTime createdAt,

    /// A signed link to the stored photo.
    String? imageUrl,

    /// The meal saved from it: set straight away when auto-save is on.
    String? mealId,
    @Default(false) bool isDisputed,
  }) = _FoodAnalysis;
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
