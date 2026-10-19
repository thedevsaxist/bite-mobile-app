// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logInUseCase)
final logInUseCaseProvider = LogInUseCaseProvider._();

final class LogInUseCaseProvider
    extends $FunctionalProvider<LogInUseCase, LogInUseCase, LogInUseCase>
    with $Provider<LogInUseCase> {
  LogInUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logInUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logInUseCaseHash();

  @$internal
  @override
  $ProviderElement<LogInUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogInUseCase create(Ref ref) {
    return logInUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogInUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogInUseCase>(value),
    );
  }
}

String _$logInUseCaseHash() => r'81b436ecc8dbfc1a95a2f14ced08aae9836795ce';
