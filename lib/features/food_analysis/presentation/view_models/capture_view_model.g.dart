// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capture_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 05 Capture photo.

@ProviderFor(CaptureViewModel)
final captureViewModelProvider = CaptureViewModelProvider._();

/// 05 Capture photo.
final class CaptureViewModelProvider
    extends $NotifierProvider<CaptureViewModel, CaptureState> {
  /// 05 Capture photo.
  CaptureViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'captureViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$captureViewModelHash();

  @$internal
  @override
  CaptureViewModel create() => CaptureViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CaptureState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CaptureState>(value),
    );
  }
}

String _$captureViewModelHash() => r'bf144ce92e1e8ac5d264033320ffcc4e46bf73a1';

/// 05 Capture photo.

abstract class _$CaptureViewModel extends $Notifier<CaptureState> {
  CaptureState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CaptureState, CaptureState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CaptureState, CaptureState>,
              CaptureState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
