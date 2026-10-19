/// Error codes the app reacts to across features. Feature-specific codes
/// (e.g. `PROFILE_NOT_FOUND`) live in that feature's data layer.
abstract final class ApiErrorCodes {
  /// The access token expired: refresh it and retry.
  static const tokenExpired = 'TOKEN_EXPIRED';

  /// The refresh token was rejected: the session is over.
  static const invalidRefreshToken = 'INVALID_REFRESH_TOKEN';
}

/// The backend's error body:
/// `{"success": false, "error": {"code": "...", "message": "...", "details": ...}}`.
class ApiError {
  const ApiError({required this.code, required this.message, this.details});

  final String code;
  final String message;
  final Object? details;

  /// Reads an error from a response body, or `null` if it isn't one.
  static ApiError? fromResponseData(Object? data) {
    if (data case {
      'error': {'code': final String code, 'message': final String message},
    }) {
      return ApiError(
        code: code,
        message: message,
        details: (data['error'] as Map)['details'],
      );
    }
    return null;
  }

  /// Per-field messages from a `VALIDATION_ERROR`, whose details are
  /// `[{"path": "email", "message": "..."}]`.
  Map<String, String> get fieldErrors => {
    if (details case final List items)
      for (final item in items)
        if (item case {
          'path': final String path,
          'message': final String message,
        })
          path: message,
  };
}
