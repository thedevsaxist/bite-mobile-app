// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_intake_summary_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getIntakeSummaryUseCase)
final getIntakeSummaryUseCaseProvider = GetIntakeSummaryUseCaseProvider._();

final class GetIntakeSummaryUseCaseProvider
    extends
        $FunctionalProvider<
          GetIntakeSummaryUseCase,
          GetIntakeSummaryUseCase,
          GetIntakeSummaryUseCase
        >
    with $Provider<GetIntakeSummaryUseCase> {
  GetIntakeSummaryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getIntakeSummaryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getIntakeSummaryUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetIntakeSummaryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetIntakeSummaryUseCase create(Ref ref) {
    return getIntakeSummaryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetIntakeSummaryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetIntakeSummaryUseCase>(value),
    );
  }
}

String _$getIntakeSummaryUseCaseHash() =>
    r'eda8dd51e05dc0cb73a3c04dbbcf7a4b6f281e78';
