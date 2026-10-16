import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/config/app_config.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

part 'dio_client.g.dart';

/// The single Dio instance shared by every feature's Retrofit API service.
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.apiBaseUrl,
      connectTimeout: AppConfig.connectTimeout,
      sendTimeout: AppConfig.sendTimeout,
      receiveTimeout: AppConfig.receiveTimeout,
      headers: {'Accept': 'application/json'},
    ),
  );

  dio.interceptors.add(
    AuthInterceptor(ref.watch(secureStorageServiceProvider)),
  );

  if (AppConfig.enableNetworkLogs) {
    dio.interceptors.add(
      PrettyDioLogger(requestBody: true, compact: true, maxWidth: 100),
    );
  }

  ref.onDispose(dio.close);
  return dio;
}
