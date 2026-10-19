// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_meal_items_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(updateMealItemsUseCase)
final updateMealItemsUseCaseProvider = UpdateMealItemsUseCaseProvider._();

final class UpdateMealItemsUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateMealItemsUseCase,
          UpdateMealItemsUseCase,
          UpdateMealItemsUseCase
        >
    with $Provider<UpdateMealItemsUseCase> {
  UpdateMealItemsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateMealItemsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateMealItemsUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateMealItemsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateMealItemsUseCase create(Ref ref) {
    return updateMealItemsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateMealItemsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateMealItemsUseCase>(value),
    );
  }
}

String _$updateMealItemsUseCaseHash() =>
    r'e8519e2f26636b4652d7f40b78ae770ae9c71762';
