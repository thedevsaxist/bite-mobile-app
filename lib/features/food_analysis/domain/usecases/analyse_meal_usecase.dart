import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/core/usecase/cancellation.dart';
import 'package:calorie_estimator/features/food_analysis/data/repositories/analysis_repository_impl.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/analysis_repository.dart';

part 'analyse_meal_usecase.g.dart';

typedef AnalyseMealParams = ({
  String imagePath,
  String? context,
  Cancellation? cancellation,
});

class AnalyseMealUseCase implements UseCase<FoodAnalysis, AnalyseMealParams> {
  const AnalyseMealUseCase(this._repository);

  final AnalysisRepository _repository;

  @override
  FutureEither<FoodAnalysis> call(AnalyseMealParams params) =>
      _repository.analyse(
        imagePath: params.imagePath,
        context: params.context,
        cancellation: params.cancellation,
      );
}

@riverpod
AnalyseMealUseCase analyseMealUseCase(Ref ref) =>
    AnalyseMealUseCase(ref.watch(analysisRepositoryProvider));
