// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_settings_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getSettingsUseCase)
final getSettingsUseCaseProvider = GetSettingsUseCaseProvider._();

final class GetSettingsUseCaseProvider
    extends
        $FunctionalProvider<
          GetSettingsUseCase,
          GetSettingsUseCase,
          GetSettingsUseCase
        >
    with $Provider<GetSettingsUseCase> {
  GetSettingsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getSettingsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getSettingsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSettingsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetSettingsUseCase create(Ref ref) {
    return getSettingsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSettingsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSettingsUseCase>(value),
    );
  }
}

String _$getSettingsUseCaseHash() =>
    r'65dfa5097d3a7e6047b84de24bd1a07dd8c01103';
