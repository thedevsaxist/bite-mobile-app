// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_profile_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(saveProfileUseCase)
final saveProfileUseCaseProvider = SaveProfileUseCaseProvider._();

final class SaveProfileUseCaseProvider
    extends
        $FunctionalProvider<
          SaveProfileUseCase,
          SaveProfileUseCase,
          SaveProfileUseCase
        >
    with $Provider<SaveProfileUseCase> {
  SaveProfileUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveProfileUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveProfileUseCaseHash();

  @$internal
  @override
  $ProviderElement<SaveProfileUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SaveProfileUseCase create(Ref ref) {
    return saveProfileUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SaveProfileUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SaveProfileUseCase>(value),
    );
  }
}

String _$saveProfileUseCaseHash() =>
    r'e2f299f9c502e06b6b3162490fc3b2e9da43bbde';
