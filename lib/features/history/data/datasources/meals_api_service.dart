import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/features/history/data/models/meal_changes_request.dart';
import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';
import 'package:calorie_estimator/features/history/data/models/summary_dto.dart';

part 'meals_api_service.g.dart';

@riverpod
MealsApiService mealsApiService(Ref ref) =>
    MealsApiService(ref.watch(dioProvider));

/// `/meals` and `/summary` on the backend.
@RestApi()
abstract class MealsApiService {
  factory MealsApiService(Dio dio) = _MealsApiService;

  /// [from] and [to] are ISO 8601 instants; newest first.
  @GET(ApiEndpoints.meals)
  Future<MealListResponseDto> getMeals({
    @Query('from') required String from,
    @Query('to') required String to,
    @Query('limit') int limit = 100,
  });

  @GET(ApiEndpoints.mealById)
  Future<MealResponseDto> getMeal(@Path('id') String id);

  @PATCH(ApiEndpoints.mealById)
  Future<MealResponseDto> updateMeal(
    @Path('id') String id,
    @Body() MealChangesRequest body,
  );

  /// [date] is a calendar day, `2026-10-15`; [timezone] an IANA name.
  @GET(ApiEndpoints.dailySummary)
  Future<DailySummaryResponseDto> getDailySummary({
    @Query('date') required String date,
    @Query('timezone') required String timezone,
  });

  @GET(ApiEndpoints.summary)
  Future<RangeSummaryResponseDto> getSummary({
    @Query('from') required String from,
    @Query('to') required String to,
    @Query('timezone') required String timezone,
  });
}
