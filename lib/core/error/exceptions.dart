/// Thrown by the data layer. Repositories catch these and return a [Failure].
sealed class AppException implements Exception {
  const AppException(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class ServerException extends AppException {
  const ServerException(super.message, {this.statusCode});

  final int? statusCode;
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection.']);
}

class UnauthorizedException extends AppException {
  const UnauthorizedException([super.message = 'Your session has expired.']);
}

class CacheException extends AppException {
  const CacheException(super.message);
}

/// The user backed out, e.g. closed the Google or Apple sign-in sheet.
class CancelledException extends AppException {
  const CancelledException([super.message = 'Cancelled.']);
}
