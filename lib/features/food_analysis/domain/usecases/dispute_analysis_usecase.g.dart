// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_analysis_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(disputeAnalysisUseCase)
final disputeAnalysisUseCaseProvider = DisputeAnalysisUseCaseProvider._();

final class DisputeAnalysisUseCaseProvider
    extends
        $FunctionalProvider<
          DisputeAnalysisUseCase,
          DisputeAnalysisUseCase,
          DisputeAnalysisUseCase
        >
    with $Provider<DisputeAnalysisUseCase> {
  DisputeAnalysisUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'disputeAnalysisUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$disputeAnalysisUseCaseHash();

  @$internal
  @override
  $ProviderElement<DisputeAnalysisUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DisputeAnalysisUseCase create(Ref ref) {
    return disputeAnalysisUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DisputeAnalysisUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DisputeAnalysisUseCase>(value),
    );
  }
}

String _$disputeAnalysisUseCaseHash() =>
    r'74aea8984c8d5a761410505eb6189f91120c816f';
