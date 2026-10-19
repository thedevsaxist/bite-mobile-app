import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_expiry.g.dart';

/// Bumped by [AuthInterceptor] when the backend rejects the refresh token, so
/// the auth feature can sign the user out (core can't import features).
@Riverpod(keepAlive: true)
class SessionExpiry extends _$SessionExpiry {
  @override
  int build() => 0;

  void expire() => state++;
}
