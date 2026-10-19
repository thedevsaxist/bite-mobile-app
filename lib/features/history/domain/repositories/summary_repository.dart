import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/domain/entities/intake_summary.dart';

/// Intake totals against the daily reference, by calendar day in the
/// device's timezone.
abstract interface class SummaryRepository {
  FutureEither<DaySummary> getDailySummary(DateTime date);

  /// [from] and [to] are calendar days, both included.
  FutureEither<IntakeSummary> getIntakeSummary({
    required DateTime from,
    required DateTime to,
  });
}
