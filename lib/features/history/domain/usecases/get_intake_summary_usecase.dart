import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/repositories/summary_repository_impl.dart';
import 'package:calorie_estimator/features/history/domain/entities/intake_summary.dart';
import 'package:calorie_estimator/features/history/domain/repositories/summary_repository.dart';
import 'package:calorie_estimator/features/history/domain/usecases/get_meals_usecase.dart';

part 'get_intake_summary_usecase.g.dart';

class GetIntakeSummaryUseCase implements UseCase<IntakeSummary, DateRange> {
  const GetIntakeSummaryUseCase(this._repository);

  final SummaryRepository _repository;

  @override
  FutureEither<IntakeSummary> call(DateRange params) =>
      _repository.getIntakeSummary(from: params.from, to: params.to);
}

@riverpod
GetIntakeSummaryUseCase getIntakeSummaryUseCase(Ref ref) =>
    GetIntakeSummaryUseCase(ref.watch(summaryRepositoryProvider));
