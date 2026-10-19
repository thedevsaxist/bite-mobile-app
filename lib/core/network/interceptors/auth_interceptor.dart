import 'package:dio/dio.dart';

import 'package:calorie_estimator/core/network/api_endpoints.dart';
import 'package:calorie_estimator/core/network/api_error.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

/// Attaches the bearer token to outgoing requests and refreshes it when the
/// backend answers `401 TOKEN_EXPIRED`.
///
/// Public endpoints (login, register) opt out with
/// `@Extra({AuthInterceptor.skipAuth: true})` on the Retrofit method.
///
/// The backend rotates refresh tokens and treats reuse of an old one as
/// theft, so only one refresh runs at a time: requests that fail together
/// wait for the same refresh and retry with its token.
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this._storage,
    required this._dio,
    required this._refreshClient,
    required this._onSessionExpired,
  });

  static const skipAuth = 'skipAuth';
  static const _retried = 'authRetried';

  final SecureStorageService _storage;

  /// Retries the original request through every interceptor again.
  final Dio _dio;

  /// Calls `/auth/refresh` without this interceptor, so a failing refresh
  /// can't trigger another one.
  final Dio _refreshClient;

  final void Function() _onSessionExpired;

  Future<String?>? _refreshing;

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

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final options = err.requestOptions;
    final isExpired =
        err.response?.statusCode == 401 &&
        ApiError.fromResponseData(err.response?.data)?.code ==
            ApiErrorCodes.tokenExpired;
    if (!isExpired ||
        options.extra[skipAuth] == true ||
        options.extra[_retried] == true) {
      return handler.next(err);
    }

    // Another request may already have refreshed while this one was in
    // flight; if so, retry with the newer token instead of refreshing again.
    final stored = await _storage.readAccessToken();
    final token =
        stored != null && options.headers['Authorization'] != 'Bearer $stored'
        ? stored
        : await (_refreshing ??= _refresh().whenComplete(
            () => _refreshing = null,
          ));
    if (token == null) return handler.next(err);

    options
      ..extra[_retried] = true
      ..headers['Authorization'] = 'Bearer $token';
    // A multipart body (a meal photo) can only be sent once.
    if (options.data case final FormData form) options.data = form.clone();
    try {
      handler.resolve(await _dio.fetch<dynamic>(options));
    } on DioException catch (e) {
      handler.next(e);
    }
  }

  /// Exchanges the refresh token for new tokens. Returns the new access
  /// token, or `null` if the session couldn't be renewed.
  Future<String?> _refresh() async {
    final refreshToken = await _storage.readRefreshToken();
    if (refreshToken == null) {
      await _expireSession();
      return null;
    }

    try {
      final response = await _refreshClient.post<Object?>(
        ApiEndpoints.refreshToken,
        data: {'refreshToken': refreshToken},
      );
      if (response.data case {
        'data': {
          'tokens': {
            'accessToken': final String accessToken,
            'refreshToken': final String newRefreshToken,
          },
        },
      }) {
        await _storage.saveTokens(
          accessToken: accessToken,
          refreshToken: newRefreshToken,
        );
        return accessToken;
      }
      return null;
    } on DioException catch (e) {
      // 401: the refresh token is invalid, expired or reused. 403: the
      // account was deactivated. Anything else (offline, timeout, 5xx) keeps
      // the session so the next request can try again.
      if (e.response?.statusCode case 401 || 403) await _expireSession();
      return null;
    }
  }

  Future<void> _expireSession() async {
    await _storage.clearTokens();
    _onSessionExpired();
  }
}
