import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/features/food_analysis/data/models/analysis_dto.dart';
import 'package:calorie_estimator/features/history/data/models/meal_changes_request.dart';
import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';

part 'analyses_api_service.g.dart';

@riverpod
AnalysesApiService analysesApiService(Ref ref) =>
    AnalysesApiService(ref.watch(dioProvider));

/// `/analyses` on the backend.
@RestApi()
abstract class AnalysesApiService {
  factory AnalysesApiService(Dio dio) = _AnalysesApiService;

  /// The photo goes in `image`; the server checks the actual contents, so
  /// any JPEG/PNG/WebP works. [context] is optional meal notes (≤ 1000
  /// characters).
  @POST(ApiEndpoints.analyses)
  @MultiPart()
  Future<AnalysisResponseDto> createAnalysis(
    @Part(name: 'image') File image, {
    @Part(name: 'context') String? context,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST(ApiEndpoints.validateAnalysis)
  Future<MealResponseDto> validate(
    @Path('id') String id,
    @Body() MealChangesRequest body,
  );

  @POST(ApiEndpoints.disputeAnalysis)
  Future<AnalysisResponseDto> dispute(
    @Path('id') String id,
    @Body() DisputeRequest body,
  );
}
