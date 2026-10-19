import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/usecase/cancellation.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/food_analysis/data/datasources/analyses_api_service.dart';
import 'package:calorie_estimator/features/food_analysis/data/models/analysis_dto.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/domain/repositories/analysis_repository.dart';
import 'package:calorie_estimator/features/history/data/models/meal_changes_request.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'analysis_repository_impl.g.dart';

@riverpod
AnalysisRepository analysisRepository(Ref ref) =>
    AnalysisRepositoryImpl(ref.watch(analysesApiServiceProvider));

class AnalysisRepositoryImpl implements AnalysisRepository {
  AnalysisRepositoryImpl(this._api);

  final AnalysesApiService _api;

  @override
  FutureEither<FoodAnalysis> analyse({
    required String imagePath,
    String? context,
    Cancellation? cancellation,
  }) => guard(() async {
    final cancelToken = CancelToken();
    if (cancellation != null) {
      unawaited(cancellation.whenCancelled.then((_) => cancelToken.cancel()));
    }
    final response = await _api.createAnalysis(
      File(imagePath),
      context: context == null || context.trim().isEmpty ? null : context,
      cancelToken: cancelToken,
    );
    return response.analysis.toEntity();
  });

  @override
  FutureEither<MealRecord> saveAsMeal(
    String analysisId, {
    List<MealItem>? items,
  }) => guard(() async {
    final response = await _api.validate(
      analysisId,
      items == null
          ? const MealChangesRequest()
          : MealChangesRequest.withItems(items),
    );
    return response.meal.toEntity();
  });

  @override
  FutureEither<Unit> dispute(String analysisId) => guard(() async {
    await _api.dispute(analysisId, const DisputeRequest());
    return unit;
  });
}
