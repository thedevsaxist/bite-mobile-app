// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 02 Create account — sign up, with a toggle to log in instead.

@ProviderFor(CreateAccountViewModel)
final createAccountViewModelProvider = CreateAccountViewModelProvider._();

/// 02 Create account — sign up, with a toggle to log in instead.
final class CreateAccountViewModelProvider
    extends $NotifierProvider<CreateAccountViewModel, CreateAccountState> {
  /// 02 Create account — sign up, with a toggle to log in instead.
  CreateAccountViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAccountViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAccountViewModelHash();

  @$internal
  @override
  CreateAccountViewModel create() => CreateAccountViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAccountState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAccountState>(value),
    );
  }
}

String _$createAccountViewModelHash() =>
    r'a1d2c3c555a4409cc65d37b3a2aa8d35130c7492';

/// 02 Create account — sign up, with a toggle to log in instead.

abstract class _$CreateAccountViewModel extends $Notifier<CreateAccountState> {
  CreateAccountState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateAccountState, CreateAccountState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAccountState, CreateAccountState>,
              CreateAccountState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
