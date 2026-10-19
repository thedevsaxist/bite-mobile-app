import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/error/exceptions.dart';
import 'package:calorie_estimator/core/error/failures.dart';
import 'package:calorie_estimator/core/network/interceptors/auth_interceptor.dart';

DioException _response(
  int status,
  Map<String, Object?> error, {
  bool public = false,
}) {
  final options = RequestOptions(
    path: '/test',
    extra: {if (public) AuthInterceptor.skipAuth: true},
  );
  return DioException(
    requestOptions: options,
    type: DioExceptionType.badResponse,
    response: Response(
      requestOptions: options,
      statusCode: status,
      data: {'success': false, 'error': error},
    ),
  );
}

void main() {
  group('mapDioException', () {
    final options = RequestOptions(path: '/test');

    test('maps timeouts to TimeoutFailure', () {
      final failure = mapDioException(
        DioException(
          requestOptions: options,
          type: DioExceptionType.receiveTimeout,
        ),
      );
      expect(failure, isA<TimeoutFailure>());
    });

    test('maps connection errors to NetworkFailure', () {
      final failure = mapDioException(
        DioException.connectionError(
          requestOptions: options,
          reason: 'offline',
        ),
      );
      expect(failure, isA<NetworkFailure>());
    });

    test('reads field errors from a VALIDATION_ERROR', () {
      final failure = mapDioException(
        _response(400, {
          'code': 'VALIDATION_ERROR',
          'message': 'Invalid request data',
          'details': [
            {'path': 'email', 'message': 'Enter a valid email address'},
          ],
        }),
      );

      expect(
        failure,
        isA<ValidationFailure>()
            .having((f) => f.message, 'message', 'Enter a valid email address')
            .having((f) => f.fieldErrors, 'fieldErrors', {
              'email': 'Enter a valid email address',
            }),
      );
    });

    test('keeps the server message for a 401 on a public endpoint', () {
      final failure = mapDioException(
        _response(401, {
          'code': 'UNAUTHORIZED',
          'message': 'Invalid email or password',
        }, public: true),
      );

      expect(failure, isA<UnauthorizedFailure>());
      expect(failure.message, 'Invalid email or password');
    });

    test('treats a 401 elsewhere as an ended session', () {
      final failure = mapDioException(
        _response(401, {
          'code': 'TOKEN_EXPIRED',
          'message': 'Access token expired',
        }),
      );

      expect(failure.message, const UnauthorizedFailure().message);
    });

    test('keeps the status and message of other errors', () {
      final failure = mapDioException(
        _response(409, {
          'code': 'CONFLICT',
          'message': 'An account with this email already exists',
        }),
      );

      expect(
        failure,
        isA<ServerFailure>()
            .having((f) => f.statusCode, 'statusCode', 409)
            .having(
              (f) => f.message,
              'message',
              'An account with this email already exists',
            ),
      );
    });
  });

  group('guard', () {
    test('wraps a successful call in Right', () async {
      final result = await guard(() async => 42);
      expect(result.getRight().toNullable(), 42);
    });

    test('converts AppExceptions into Left failures', () async {
      final result = await guard<int>(
        () async => throw const CacheException('missing'),
      );
      expect(result.getLeft().toNullable(), isA<CacheFailure>());
    });

    test('maps CancelledException to CancelledFailure', () async {
      final result = await guard<int>(
        () async => throw const CancelledException(),
      );
      expect(result.getLeft().toNullable(), isA<CancelledFailure>());
    });
  });

  test('isUnreachable is true for offline, timeouts and 5xx only', () {
    expect(const NetworkFailure().isUnreachable, isTrue);
    expect(const TimeoutFailure().isUnreachable, isTrue);
    expect(const ServerFailure('Down', statusCode: 503).isUnreachable, isTrue);
    expect(const ServerFailure('Gone', statusCode: 404).isUnreachable, isFalse);
    expect(const UnauthorizedFailure().isUnreachable, isFalse);
  });
}
