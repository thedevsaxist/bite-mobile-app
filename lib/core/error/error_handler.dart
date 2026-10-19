import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';

import 'package:calorie_estimator/core/error/exceptions.dart';
import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/network/api_error.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';

/// Runs a data-layer call and converts any thrown error into a [Failure].
///
/// Repository implementations wrap every data source call with this so the
/// domain and presentation layers never see Dio or platform exceptions.
FutureEither<T> guard<T>(Future<T> Function() call) async {
  try {
    return Right(await call());
  } on DioException catch (e) {
    return Left(mapDioException(e));
  } on AppException catch (e) {
    return Left(mapAppException(e));
  } on DatabaseException catch (e) {
    debugPrint('Database error: $e');
    return const Left(
      CacheFailure("Couldn't read or save data on this device."),
    );
  } catch (e, stackTrace) {
    debugPrint('Unhandled error: $e\n$stackTrace');
    return const Left(UnknownFailure());
  }
}

Failure mapAppException(AppException e) => switch (e) {
  ServerException(:final message, :final statusCode) => ServerFailure(
    message,
    statusCode: statusCode,
  ),
  NetworkException() => const NetworkFailure(),
  UnauthorizedException() => const UnauthorizedFailure(),
  CancelledException() => const CancelledFailure(),
  CacheException(:final message) => CacheFailure(message),
};

Failure mapDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.transformTimeout:
      return const TimeoutFailure();
    case DioExceptionType.connectionError:
      return const NetworkFailure();
    case DioExceptionType.badResponse:
      return _mapResponse(e.response);
    case DioExceptionType.cancel:
      return const CancelledFailure();
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return switch (e.error) {
        SocketException() => const NetworkFailure(),
        final AppException appException => mapAppException(appException),
        _ => const UnknownFailure(),
      };
  }
}

/// Maps the backend's `{"success": false, "error": {...}}` body to a
/// [Failure], keeping the server's message, which is written for users.
Failure _mapResponse(Response<dynamic>? response) {
  final statusCode = response?.statusCode;
  final error = ApiError.fromResponseData(response?.data);
  final message = error?.message ?? const UnknownFailure().message;

  return switch (statusCode) {
    // On public endpoints a 401 means wrong credentials ("Invalid email or
    // password"); everywhere else it means the session is over.
    401 when response?.requestOptions.extra[AuthInterceptor.skipAuth] == true =>
      UnauthorizedFailure(message),
    401 => const UnauthorizedFailure(),
    400 || 422 => ValidationFailure(
      error?.fieldErrors.values.firstOrNull ?? message,
      fieldErrors: error?.fieldErrors ?? const {},
      code: error?.code,
    ),
    _ => ServerFailure(message, statusCode: statusCode, code: error?.code),
  };
}
