// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_meals_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMealsUseCase)
final getMealsUseCaseProvider = GetMealsUseCaseProvider._();

final class GetMealsUseCaseProvider
    extends
        $FunctionalProvider<GetMealsUseCase, GetMealsUseCase, GetMealsUseCase>
    with $Provider<GetMealsUseCase> {
  GetMealsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMealsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMealsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetMealsUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetMealsUseCase create(Ref ref) {
    return getMealsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMealsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMealsUseCase>(value),
    );
  }
}

String _$getMealsUseCaseHash() => r'd407ca39ef8bc104d9ef2f3d4973319be3860542';
