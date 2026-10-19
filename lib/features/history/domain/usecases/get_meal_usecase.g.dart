// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_meal_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMealUseCase)
final getMealUseCaseProvider = GetMealUseCaseProvider._();

final class GetMealUseCaseProvider
    extends $FunctionalProvider<GetMealUseCase, GetMealUseCase, GetMealUseCase>
    with $Provider<GetMealUseCase> {
  GetMealUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMealUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMealUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetMealUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetMealUseCase create(Ref ref) {
    return getMealUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMealUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMealUseCase>(value),
    );
  }
}

String _$getMealUseCaseHash() => r'3a698248062c4d31cadf1cccda7853414f97e6d8';
