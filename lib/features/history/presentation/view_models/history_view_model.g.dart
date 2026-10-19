// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 11 History.

@ProviderFor(HistoryViewModel)
final historyViewModelProvider = HistoryViewModelProvider._();

/// 11 History.
final class HistoryViewModelProvider
    extends $AsyncNotifierProvider<HistoryViewModel, HistoryState> {
  /// 11 History.
  HistoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'historyViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$historyViewModelHash();

  @$internal
  @override
  HistoryViewModel create() => HistoryViewModel();
}

String _$historyViewModelHash() => r'b15152935dbab086dad9480e2791fdff819c7a6d';

/// 11 History.

abstract class _$HistoryViewModel extends $AsyncNotifier<HistoryState> {
  FutureOr<HistoryState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<HistoryState>, HistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<HistoryState>, HistoryState>,
              AsyncValue<HistoryState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
