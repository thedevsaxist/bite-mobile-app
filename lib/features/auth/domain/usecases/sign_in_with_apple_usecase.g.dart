// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_with_apple_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signInWithAppleUseCase)
final signInWithAppleUseCaseProvider = SignInWithAppleUseCaseProvider._();

final class SignInWithAppleUseCaseProvider
    extends
        $FunctionalProvider<
          SignInWithAppleUseCase,
          SignInWithAppleUseCase,
          SignInWithAppleUseCase
        >
    with $Provider<SignInWithAppleUseCase> {
  SignInWithAppleUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signInWithAppleUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signInWithAppleUseCaseHash();

  @$internal
  @override
  $ProviderElement<SignInWithAppleUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SignInWithAppleUseCase create(Ref ref) {
    return signInWithAppleUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInWithAppleUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignInWithAppleUseCase>(value),
    );
  }
}

String _$signInWithAppleUseCaseHash() =>
    r'02473e2aeeccd4a8f5a50840048f6eb8f6675797';
