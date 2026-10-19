// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getFoodUseCase)
final getFoodUseCaseProvider = GetFoodUseCaseProvider._();

final class GetFoodUseCaseProvider
    extends $FunctionalProvider<GetFoodUseCase, GetFoodUseCase, GetFoodUseCase>
    with $Provider<GetFoodUseCase> {
  GetFoodUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFoodUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFoodUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetFoodUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFoodUseCase create(Ref ref) {
    return getFoodUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFoodUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFoodUseCase>(value),
    );
  }
}

String _$getFoodUseCaseHash() => r'755daa1ada6dec47954e4cba907bba5d8d4f388f';
