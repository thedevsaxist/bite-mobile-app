// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_summary_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getDailySummaryUseCase)
final getDailySummaryUseCaseProvider = GetDailySummaryUseCaseProvider._();

final class GetDailySummaryUseCaseProvider
    extends
        $FunctionalProvider<
          GetDailySummaryUseCase,
          GetDailySummaryUseCase,
          GetDailySummaryUseCase
        >
    with $Provider<GetDailySummaryUseCase> {
  GetDailySummaryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDailySummaryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDailySummaryUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetDailySummaryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetDailySummaryUseCase create(Ref ref) {
    return getDailySummaryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDailySummaryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDailySummaryUseCase>(value),
    );
  }
}

String _$getDailySummaryUseCaseHash() =>
    r'506a714475021bb557920fc6353e3f4f506ffb9d';
