import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'package:calorie_estimator/core/error/exceptions.dart';
import 'package:calorie_estimator/core/error/failures.dart';
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
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return switch (e.error) {
        SocketException() => const NetworkFailure(),
        final AppException appException => mapAppException(appException),
        _ => const UnknownFailure(),
      };
  }
}

Failure _mapResponse(Response<dynamic>? response) {
  final statusCode = response?.statusCode;
  final data = response?.data;
  final message = _extractMessage(data) ?? const UnknownFailure().message;

  return switch (statusCode) {
    401 => const UnauthorizedFailure(),
    400 ||
    422 => ValidationFailure(message, fieldErrors: _extractFieldErrors(data)),
    _ => ServerFailure(message, statusCode: statusCode),
  };
}

/// Reads the error message from common backend error shapes:
/// `{"message": "..."}`, `{"error": "..."}` or `{"detail": "..."}`.
String? _extractMessage(Object? data) {
  if (data is! Map) return null;
  for (final key in const ['message', 'error', 'detail']) {
    final value = data[key];
    if (value is String && value.isNotEmpty) return value;
  }
  final fieldErrors = _extractFieldErrors(data);
  if (fieldErrors.isNotEmpty) return fieldErrors.values.first;
  return null;
}

/// Reads per-field validation errors from either
/// `{"errors": {"email": "..."}}` or a FastAPI-style
/// `{"detail": [{"loc": [..., "email"], "msg": "..."}]}`.
Map<String, String> _extractFieldErrors(Object? data) {
  if (data is! Map) return const {};

  final errors = data['errors'];
  if (errors is Map) {
    return {
      for (final entry in errors.entries)
        '${entry.key}': entry.value is List
            ? (entry.value as List).join(' ')
            : '${entry.value}',
    };
  }

  final detail = data['detail'];
  if (detail is List) {
    return {
      for (final item in detail.whereType<Map>())
        if (item['loc'] case [..., final Object field])
          '$field': '${item['msg']}',
    };
  }

  return const {};
}
