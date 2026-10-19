import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/repositories/summary_repository_impl.dart';
import 'package:calorie_estimator/features/history/domain/entities/intake_summary.dart';
import 'package:calorie_estimator/features/history/domain/repositories/summary_repository.dart';

part 'get_daily_summary_usecase.g.dart';

class GetDailySummaryUseCase implements UseCase<DaySummary, DateTime> {
  const GetDailySummaryUseCase(this._repository);

  final SummaryRepository _repository;

  @override
  FutureEither<DaySummary> call(DateTime params) =>
      _repository.getDailySummary(params);
}

@riverpod
GetDailySummaryUseCase getDailySummaryUseCase(Ref ref) =>
    GetDailySummaryUseCase(ref.watch(summaryRepositoryProvider));
