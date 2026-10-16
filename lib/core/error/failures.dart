/// A user-presentable error returned from the domain layer.
///
/// View models switch on the subtype to decide how to react (e.g. send the
/// user back to login on [UnauthorizedFailure]).
sealed class Failure {
  const Failure(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {this.statusCode});

  final int? statusCode;
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
  const ValidationFailure(super.message, {this.fieldErrors = const {}});

  final Map<String, String> fieldErrors;
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure([
    super.message = 'Something went wrong. Please try again.',
  ]);
}
