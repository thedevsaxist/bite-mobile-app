import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/features/food_analysis/data/models/food_dto.dart';

part 'nutrition_api_service.g.dart';

@riverpod
NutritionApiService nutritionApiService(Ref ref) =>
    NutritionApiService(ref.watch(dioProvider));

/// `/nutrition/foods`: the seeded nutritional reference data.
@RestApi()
abstract class NutritionApiService {
  factory NutritionApiService(Dio dio) = _NutritionApiService;

  @GET(ApiEndpoints.foods)
  Future<FoodListResponseDto> searchFoods({
    @Query('q') required String query,
    @Query('limit') int limit = 6,
  });

  @GET(ApiEndpoints.foodById)
  Future<FoodResponseDto> getFood(@Path('id') String id);
}
