import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/features/settings/data/models/settings_dto.dart';

part 'settings_api_service.g.dart';

@riverpod
SettingsApiService settingsApiService(Ref ref) =>
    SettingsApiService(ref.watch(dioProvider));

/// `/settings` on the backend; returns the defaults until changed.
@RestApi()
abstract class SettingsApiService {
  factory SettingsApiService(Dio dio) = _SettingsApiService;

  @GET(ApiEndpoints.settings)
  Future<SettingsResponseDto> getSettings();

  @PATCH(ApiEndpoints.settings)
  Future<SettingsResponseDto> updateSettings(@Body() SettingsDto body);
}
