import 'package:dio/dio.dart';

import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

/// Attaches the bearer token to outgoing requests.
///
/// Public endpoints (login, register) opt out with
/// `@Extra({AuthInterceptor.skipAuth: true})` on the Retrofit method.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._storage);

  static const skipAuth = 'skipAuth';

  final SecureStorageService _storage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra[skipAuth] != true) {
      final token = await _storage.readAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  // TODO: refresh the access token on 401 once the backend auth flow exists.
}
