/// A user-presentable error returned from the domain layer.
///
/// View models switch on the subtype to decide how to react (e.g. send the
/// user back to login on [UnauthorizedFailure]).
sealed class Failure {
  const Failure(this.message);

  final String message;

  /// The backend couldn't be reached or failed on its side, so a cached copy
  /// is better than nothing.
  bool get isUnreachable => switch (this) {
    NetworkFailure() || TimeoutFailure() => true,
    ServerFailure(:final statusCode) => statusCode != null && statusCode >= 500,
    _ => false,
  };

  /// The backend's error code (e.g. `IMAGE_TOO_BLURRY`), when it sent one.
  String? get code => switch (this) {
    ServerFailure(:final code) || ValidationFailure(:final code) => code,
    _ => null,
  };

  @override
  String toString() => '$runtimeType: $message';
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {this.statusCode, this.code});

  final int? statusCode;

  @override
  final String? code;
}

class NetworkFailure extends Failure {
  const NetworkFailure([
    super.message = 'No internet connection. Check your network and try again.',
  ]);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure([
    super.message = 'The request took too long. Please try again.',
  ]);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([
    super.message = 'Your session has expired. Please log in again.',
  ]);
}

/// The server rejected the input, e.g. an invalid form field or an image that
/// failed validation.
class ValidationFailure extends Failure {
  const ValidationFailure(
    super.message, {
    this.fieldErrors = const {},
    this.code,
  });

  final Map<String, String> fieldErrors;

  @override
  final String? code;
}

/// The user backed out of the action. Not an error worth showing.
class CancelledFailure extends Failure {
  const CancelledFailure([super.message = 'Cancelled.']);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure([
    super.message = 'Something went wrong. Please try again.',
  ]);
}
