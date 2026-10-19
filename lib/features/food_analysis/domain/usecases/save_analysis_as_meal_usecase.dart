import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/repositories/analysis_repository_impl.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/analysis_repository.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'save_analysis_as_meal_usecase.g.dart';

/// "Looks right, save it", when auto-save is off.
class SaveAnalysisAsMealUseCase
    implements
        UseCase<MealRecord, ({String analysisId, List<MealItem>? items})> {
  const SaveAnalysisAsMealUseCase(this._repository);

  final AnalysisRepository _repository;

  @override
  FutureEither<MealRecord> call(
    ({String analysisId, List<MealItem>? items}) params,
  ) => _repository.saveAsMeal(params.analysisId, items: params.items);
}

@riverpod
SaveAnalysisAsMealUseCase saveAnalysisAsMealUseCase(Ref ref) =>
    SaveAnalysisAsMealUseCase(ref.watch(analysisRepositoryProvider));
