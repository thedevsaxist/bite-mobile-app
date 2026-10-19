import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/utils/device_timezone.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/history/data/datasources/meals_api_service.dart';
import 'package:calorie_estimator/features/history/domain/entities/intake_summary.dart';
import 'package:calorie_estimator/features/history/domain/repositories/summary_repository.dart';

part 'summary_repository_impl.g.dart';

@riverpod
SummaryRepository summaryRepository(Ref ref) => SummaryRepositoryImpl(
  ref.watch(mealsApiServiceProvider),
  ref.watch(deviceTimezoneProvider),
);

class SummaryRepositoryImpl implements SummaryRepository {
  SummaryRepositoryImpl(this._api, this._timezone);

  final MealsApiService _api;
  final DeviceTimezone _timezone;

  static final _calendarDate = DateFormat('yyyy-MM-dd');

  @override
  FutureEither<DaySummary> getDailySummary(DateTime date) => guard(() async {
    final response = await _api.getDailySummary(
      date: _calendarDate.format(date),
      timezone: await _timezone.get(),
    );
    return response.summary.toEntity();
  });

  @override
  FutureEither<IntakeSummary> getIntakeSummary({
    required DateTime from,
    required DateTime to,
  }) => guard(() async {
    final response = await _api.getSummary(
      from: _calendarDate.format(from),
      to: _calendarDate.format(to),
      timezone: await _timezone.get(),
    );
    return response.summary.toEntity();
  });
}
