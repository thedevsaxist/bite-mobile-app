// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_session_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// State shared by the whole scan flow: Capture → Meal details → Analysing →
/// Result → Edit item. Kept alive across those screens; [startNewScan] resets
/// it.

@ProviderFor(ScanSessionViewModel)
final scanSessionViewModelProvider = ScanSessionViewModelProvider._();

/// State shared by the whole scan flow: Capture → Meal details → Analysing →
/// Result → Edit item. Kept alive across those screens; [startNewScan] resets
/// it.
final class ScanSessionViewModelProvider
    extends $NotifierProvider<ScanSessionViewModel, ScanSessionState> {
  /// State shared by the whole scan flow: Capture → Meal details → Analysing →
  /// Result → Edit item. Kept alive across those screens; [startNewScan] resets
  /// it.
  ScanSessionViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scanSessionViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scanSessionViewModelHash();

  @$internal
  @override
  ScanSessionViewModel create() => ScanSessionViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScanSessionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScanSessionState>(value),
    );
  }
}

String _$scanSessionViewModelHash() =>
    r'37e52827cde72b6e304af564ec075d0e60370b85';

/// State shared by the whole scan flow: Capture → Meal details → Analysing →
/// Result → Edit item. Kept alive across those screens; [startNewScan] resets
/// it.

abstract class _$ScanSessionViewModel extends $Notifier<ScanSessionState> {
  ScanSessionState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ScanSessionState, ScanSessionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ScanSessionState, ScanSessionState>,
              ScanSessionState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
