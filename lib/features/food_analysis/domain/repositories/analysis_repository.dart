import 'package:fpdart/fpdart.dart';

import 'package:calorie_estimator/core/usecase/cancellation.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

abstract interface class AnalysisRepository {
  /// Uploads the photo and waits for the AI result (a few seconds). Fails
  /// with a `CancelledFailure` when [cancellation] is cancelled.
  FutureEither<FoodAnalysis> analyse({
    required String imagePath,
    String? context,
    Cancellation? cancellation,
  });

  /// Saves the result as a meal (when auto-save is off), with the user's
  /// corrections when [items] is given.
  FutureEither<MealRecord> saveAsMeal(
    String analysisId, {
    List<MealItem>? items,
  });

  /// Records that the result is wrong; a meal saved from it stops counting.
  FutureEither<Unit> dispute(String analysisId);
}
