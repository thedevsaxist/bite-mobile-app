// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'has_seen_onboarding_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(hasSeenOnboardingUseCase)
final hasSeenOnboardingUseCaseProvider = HasSeenOnboardingUseCaseProvider._();

final class HasSeenOnboardingUseCaseProvider
    extends
        $FunctionalProvider<
          HasSeenOnboardingUseCase,
          HasSeenOnboardingUseCase,
          HasSeenOnboardingUseCase
        >
    with $Provider<HasSeenOnboardingUseCase> {
  HasSeenOnboardingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasSeenOnboardingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasSeenOnboardingUseCaseHash();

  @$internal
  @override
  $ProviderElement<HasSeenOnboardingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HasSeenOnboardingUseCase create(Ref ref) {
    return hasSeenOnboardingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HasSeenOnboardingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HasSeenOnboardingUseCase>(value),
    );
  }
}

String _$hasSeenOnboardingUseCaseHash() =>
    r'184e881bb2aec9a83072f2ce0efdbaeacc438ee2';
