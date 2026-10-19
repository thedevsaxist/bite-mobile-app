// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_foods_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchFoodsUseCase)
final searchFoodsUseCaseProvider = SearchFoodsUseCaseProvider._();

final class SearchFoodsUseCaseProvider
    extends
        $FunctionalProvider<
          SearchFoodsUseCase,
          SearchFoodsUseCase,
          SearchFoodsUseCase
        >
    with $Provider<SearchFoodsUseCase> {
  SearchFoodsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchFoodsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchFoodsUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchFoodsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SearchFoodsUseCase create(Ref ref) {
    return searchFoodsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchFoodsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchFoodsUseCase>(value),
    );
  }
}

String _$searchFoodsUseCaseHash() =>
    r'4e02b527d7a65628b244c067160010f3605d9535';
