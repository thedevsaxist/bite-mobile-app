// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mealsRepository)
final mealsRepositoryProvider = MealsRepositoryProvider._();

final class MealsRepositoryProvider
    extends
        $FunctionalProvider<MealsRepository, MealsRepository, MealsRepository>
    with $Provider<MealsRepository> {
  MealsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mealsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mealsRepositoryHash();

  @$internal
  @override
  $ProviderElement<MealsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MealsRepository create(Ref ref) {
    return mealsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MealsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MealsRepository>(value),
    );
  }
}

String _$mealsRepositoryHash() => r'dcfc3c36c8cadb8b09193a7d9e4d758074aa6cd0';
