// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_analysis_as_meal_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(saveAnalysisAsMealUseCase)
final saveAnalysisAsMealUseCaseProvider = SaveAnalysisAsMealUseCaseProvider._();

final class SaveAnalysisAsMealUseCaseProvider
    extends
        $FunctionalProvider<
          SaveAnalysisAsMealUseCase,
          SaveAnalysisAsMealUseCase,
          SaveAnalysisAsMealUseCase
        >
    with $Provider<SaveAnalysisAsMealUseCase> {
  SaveAnalysisAsMealUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveAnalysisAsMealUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveAnalysisAsMealUseCaseHash();

  @$internal
  @override
  $ProviderElement<SaveAnalysisAsMealUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SaveAnalysisAsMealUseCase create(Ref ref) {
    return saveAnalysisAsMealUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SaveAnalysisAsMealUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SaveAnalysisAsMealUseCase>(value),
    );
  }
}

String _$saveAnalysisAsMealUseCaseHash() =>
    r'8a124d2ffba8bb815ff13065e1858a42bd2fa11f';
