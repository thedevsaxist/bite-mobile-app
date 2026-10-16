import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/error/exceptions.dart';
import 'package:calorie_estimator/core/error/failures.dart';

void main() {
  final options = RequestOptions(path: '/test');

  DioException badResponse(int statusCode, Object? data) => DioException(
    requestOptions: options,
    type: DioExceptionType.badResponse,
    response: Response(
      requestOptions: options,
      statusCode: statusCode,
      data: data,
    ),
  );

  group('mapDioException', () {
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

    test('maps 401 to UnauthorizedFailure', () {
      expect(
        mapDioException(badResponse(401, null)),
        isA<UnauthorizedFailure>(),
      );
    });

    test('reads the server message on other errors', () {
      final failure = mapDioException(
        badResponse(500, {'message': 'AI service unavailable'}),
      );
      expect(failure, isA<ServerFailure>());
      expect(failure.message, 'AI service unavailable');
    });

    test('reads FastAPI-style field errors on 422', () {
      final failure = mapDioException(
        badResponse(422, {
          'detail': [
            {
              'loc': ['body', 'email'],
              'msg': 'Invalid email',
            },
          ],
        }),
      );
      expect(failure, isA<ValidationFailure>());
      expect((failure as ValidationFailure).fieldErrors, {
        'email': 'Invalid email',
      });
      expect(failure.message, 'Invalid email');
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
  });
}
