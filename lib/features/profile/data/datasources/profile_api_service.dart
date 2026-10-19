import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/features/profile/data/models/profile_dto.dart';

part 'profile_api_service.g.dart';

@riverpod
ProfileApiService profileApiService(Ref ref) =>
    ProfileApiService(ref.watch(dioProvider));

/// `/profile` on the backend. Until a profile is set up, every endpoint
/// answers `404 PROFILE_NOT_FOUND`.
@RestApi()
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;

  static const profileNotFound = 'PROFILE_NOT_FOUND';

  @GET(ApiEndpoints.profile)
  Future<ProfileResponseDto> getProfile();

  @PUT(ApiEndpoints.profile)
  Future<SaveProfileResponseDto> putProfile(@Body() ProfileDto body);

  @GET(ApiEndpoints.dietaryReference)
  Future<DietaryReferenceResponseDto> getDietaryReference();
}
