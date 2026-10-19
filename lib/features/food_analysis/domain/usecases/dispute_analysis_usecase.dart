import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/repositories/analysis_repository_impl.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/analysis_repository.dart';

part 'dispute_analysis_usecase.g.dart';

/// "This is wrong".
class DisputeAnalysisUseCase implements UseCase<Unit, String> {
  const DisputeAnalysisUseCase(this._repository);

  final AnalysisRepository _repository;

  @override
  FutureEither<Unit> call(String params) => _repository.dispute(params);
}

@riverpod
DisputeAnalysisUseCase disputeAnalysisUseCase(Ref ref) =>
    DisputeAnalysisUseCase(ref.watch(analysisRepositoryProvider));
