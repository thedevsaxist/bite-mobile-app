// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Start-up work behind the splash hand-off.

@ProviderFor(SplashViewModel)
final splashViewModelProvider = SplashViewModelProvider._();

/// Start-up work behind the splash hand-off.
final class SplashViewModelProvider
    extends $AsyncNotifierProvider<SplashViewModel, StartDestination> {
  /// Start-up work behind the splash hand-off.
  SplashViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashViewModelHash();

  @$internal
  @override
  SplashViewModel create() => SplashViewModel();
}

String _$splashViewModelHash() => r'67b5ed64bc65c0387f0eb2af9f30256c22a72f04';

/// Start-up work behind the splash hand-off.

abstract class _$SplashViewModel extends $AsyncNotifier<StartDestination> {
  FutureOr<StartDestination> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<StartDestination>, StartDestination>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<StartDestination>, StartDestination>,
              AsyncValue<StartDestination>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
