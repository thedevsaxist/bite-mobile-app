import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/dio_client.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_requests.dart';
import 'package:calorie_estimator/features/auth/data/models/auth_response_dto.dart';
import 'package:calorie_estimator/features/auth/data/models/user_dto.dart';

part 'auth_api_service.g.dart';

@riverpod
AuthApiService authApiService(Ref ref) =>
    AuthApiService(ref.watch(dioProvider));

/// `/auth` and `/users` on the backend. Token refresh happens in
/// [AuthInterceptor], not here.
@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST(ApiEndpoints.register)
  @Extra({AuthInterceptor.skipAuth: true})
  Future<AuthResponseDto> register(@Body() RegisterRequest body);

  @POST(ApiEndpoints.login)
  @Extra({AuthInterceptor.skipAuth: true})
  Future<AuthResponseDto> logIn(@Body() LoginRequest body);

  /// Exchanges a Firebase ID token (Google or Apple) for our own session.
  @POST(ApiEndpoints.firebase)
  @Extra({AuthInterceptor.skipAuth: true})
  Future<AuthResponseDto> signInWithFirebase(
    @Body() FirebaseSignInRequest body,
  );

  /// Revokes the refresh token. `204 No Content`; unknown tokens are ignored.
  @POST(ApiEndpoints.logout)
  @Extra({AuthInterceptor.skipAuth: true})
  Future<void> logOut(@Body() RefreshTokenRequest body);

  @GET(ApiEndpoints.me)
  Future<UserResponseDto> getMe();
}
