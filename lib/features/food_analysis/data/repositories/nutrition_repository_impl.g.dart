// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nutritionRepository)
final nutritionRepositoryProvider = NutritionRepositoryProvider._();

final class NutritionRepositoryProvider
    extends
        $FunctionalProvider<
          NutritionRepository,
          NutritionRepository,
          NutritionRepository
        >
    with $Provider<NutritionRepository> {
  NutritionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nutritionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nutritionRepositoryHash();

  @$internal
  @override
  $ProviderElement<NutritionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NutritionRepository create(Ref ref) {
    return nutritionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NutritionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NutritionRepository>(value),
    );
  }
}

String _$nutritionRepositoryHash() =>
    r'94bdff2d2d6a311ed9ae794e9a6c4f518242f1f0';
