// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Whether someone is signed in, for the router's redirect.
///
/// Set by splash (restored session) and the sign-in view models; cleared on
/// log out and when the backend rejects the refresh token.

@ProviderFor(AuthSession)
final authSessionProvider = AuthSessionProvider._();

/// Whether someone is signed in, for the router's redirect.
///
/// Set by splash (restored session) and the sign-in view models; cleared on
/// log out and when the backend rejects the refresh token.
final class AuthSessionProvider extends $NotifierProvider<AuthSession, bool> {
  /// Whether someone is signed in, for the router's redirect.
  ///
  /// Set by splash (restored session) and the sign-in view models; cleared on
  /// log out and when the backend rejects the refresh token.
  AuthSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authSessionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authSessionHash();

  @$internal
  @override
  AuthSession create() => AuthSession();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$authSessionHash() => r'd708ae33de8058ec4b944695e3538f0071b8f5b6';

/// Whether someone is signed in, for the router's redirect.
///
/// Set by splash (restored session) and the sign-in view models; cleared on
/// log out and when the backend rejects the refresh token.

abstract class _$AuthSession extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
