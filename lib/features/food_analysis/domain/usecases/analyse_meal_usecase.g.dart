// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyse_meal_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(analyseMealUseCase)
final analyseMealUseCaseProvider = AnalyseMealUseCaseProvider._();

final class AnalyseMealUseCaseProvider
    extends
        $FunctionalProvider<
          AnalyseMealUseCase,
          AnalyseMealUseCase,
          AnalyseMealUseCase
        >
    with $Provider<AnalyseMealUseCase> {
  AnalyseMealUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyseMealUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyseMealUseCaseHash();

  @$internal
  @override
  $ProviderElement<AnalyseMealUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnalyseMealUseCase create(Ref ref) {
    return analyseMealUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyseMealUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyseMealUseCase>(value),
    );
  }
}

String _$analyseMealUseCaseHash() =>
    r'257a9313fda9b10e165eb427f3b70b5b2a0bae5e';
