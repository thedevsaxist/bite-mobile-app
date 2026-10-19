import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/network/session_expiry.dart';

part 'auth_session.g.dart';

/// Whether someone is signed in, for the router's redirect.
///
/// Set by splash (restored session) and the sign-in view models; cleared on
/// log out and when the backend rejects the refresh token.
@Riverpod(keepAlive: true)
class AuthSession extends _$AuthSession {
  @override
  bool build() {
    ref.listen(sessionExpiryProvider, (_, _) => state = false);
    return false;
  }

  void signedIn() => state = true;

  void signedOut() => state = false;
}
