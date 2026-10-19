import 'package:dio/dio.dart';

/// Unwraps the backend's success envelope, `{"success": true, "data": ...}`,
/// so Retrofit services parse `data` directly.
///
/// Error bodies are left whole for `mapDioException` to read.
class EnvelopeInterceptor extends Interceptor {
  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (response.data case {'success': true, 'data': final Object? data}) {
      response.data = data;
    }
    handler.next(response);
  }
}
