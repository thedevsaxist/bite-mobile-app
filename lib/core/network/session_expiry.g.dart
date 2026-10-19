// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_expiry.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Bumped by [AuthInterceptor] when the backend rejects the refresh token, so
/// the auth feature can sign the user out (core can't import features).

@ProviderFor(SessionExpiry)
final sessionExpiryProvider = SessionExpiryProvider._();

/// Bumped by [AuthInterceptor] when the backend rejects the refresh token, so
/// the auth feature can sign the user out (core can't import features).
final class SessionExpiryProvider
    extends $NotifierProvider<SessionExpiry, int> {
  /// Bumped by [AuthInterceptor] when the backend rejects the refresh token, so
  /// the auth feature can sign the user out (core can't import features).
  SessionExpiryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionExpiryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionExpiryHash();

  @$internal
  @override
  SessionExpiry create() => SessionExpiry();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$sessionExpiryHash() => r'176440197b069c1c22ac95e9e20ffbc753c29a1c';

/// Bumped by [AuthInterceptor] when the backend rejects the refresh token, so
/// the auth feature can sign the user out (core can't import features).

abstract class _$SessionExpiry extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
