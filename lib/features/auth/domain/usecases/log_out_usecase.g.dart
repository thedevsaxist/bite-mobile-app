// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_out_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logOutUseCase)
final logOutUseCaseProvider = LogOutUseCaseProvider._();

final class LogOutUseCaseProvider
    extends $FunctionalProvider<LogOutUseCase, LogOutUseCase, LogOutUseCase>
    with $Provider<LogOutUseCase> {
  LogOutUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logOutUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logOutUseCaseHash();

  @$internal
  @override
  $ProviderElement<LogOutUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogOutUseCase create(Ref ref) {
    return logOutUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogOutUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogOutUseCase>(value),
    );
  }
}

String _$logOutUseCaseHash() => r'bd1b48f08a295023cabd47c7fcf088a4a4a1723e';
