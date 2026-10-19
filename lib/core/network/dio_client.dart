import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/config/app_config.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/core/network/interceptors/envelope_interceptor.dart';
import 'package:calorie_estimator/core/network/session_expiry.dart';
import 'package:calorie_estimator/core/storage/secure_storage_service.dart';

part 'dio_client.g.dart';

/// The single Dio instance shared by every feature's Retrofit API service.
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: AppConfig.apiBaseUrl,
    connectTimeout: AppConfig.connectTimeout,
    sendTimeout: AppConfig.sendTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
    headers: {'Accept': 'application/json'},
  );
  final dio = Dio(options);
  final refreshClient = Dio(options);

  dio.interceptors.addAll([
    EnvelopeInterceptor(),
    AuthInterceptor(
      storage: ref.watch(secureStorageServiceProvider),
      dio: dio,
      refreshClient: refreshClient,
      onSessionExpired: ref.read(sessionExpiryProvider.notifier).expire,
    ),
  ]);

  if (AppConfig.enableNetworkLogs) {
    for (final client in [dio, refreshClient]) {
      client.interceptors.add(
        PrettyDioLogger(requestBody: true, compact: true, maxWidth: 100),
      );
    }
  }

  ref.onDispose(() {
    dio.close();
    refreshClient.close();
  });
  return dio;
}
