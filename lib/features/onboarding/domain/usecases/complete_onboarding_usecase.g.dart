// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_onboarding_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(completeOnboardingUseCase)
final completeOnboardingUseCaseProvider = CompleteOnboardingUseCaseProvider._();

final class CompleteOnboardingUseCaseProvider
    extends
        $FunctionalProvider<
          CompleteOnboardingUseCase,
          CompleteOnboardingUseCase,
          CompleteOnboardingUseCase
        >
    with $Provider<CompleteOnboardingUseCase> {
  CompleteOnboardingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'completeOnboardingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$completeOnboardingUseCaseHash();

  @$internal
  @override
  $ProviderElement<CompleteOnboardingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CompleteOnboardingUseCase create(Ref ref) {
    return completeOnboardingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompleteOnboardingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompleteOnboardingUseCase>(value),
    );
  }
}

String _$completeOnboardingUseCaseHash() =>
    r'08c90149cce8c5b16cec3b30a20ee185ab5c7086';
