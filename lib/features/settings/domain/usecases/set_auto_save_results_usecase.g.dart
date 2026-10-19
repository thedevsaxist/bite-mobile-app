// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_auto_save_results_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(setAutoSaveResultsUseCase)
final setAutoSaveResultsUseCaseProvider = SetAutoSaveResultsUseCaseProvider._();

final class SetAutoSaveResultsUseCaseProvider
    extends
        $FunctionalProvider<
          SetAutoSaveResultsUseCase,
          SetAutoSaveResultsUseCase,
          SetAutoSaveResultsUseCase
        >
    with $Provider<SetAutoSaveResultsUseCase> {
  SetAutoSaveResultsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setAutoSaveResultsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setAutoSaveResultsUseCaseHash();

  @$internal
  @override
  $ProviderElement<SetAutoSaveResultsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SetAutoSaveResultsUseCase create(Ref ref) {
    return setAutoSaveResultsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SetAutoSaveResultsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SetAutoSaveResultsUseCase>(value),
    );
  }
}

String _$setAutoSaveResultsUseCaseHash() =>
    r'ccd0f103851c17e897dca714a3047d09849662bd';
