// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_setup_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 03 Profile setup. Also used to edit details from Profile & settings.

@ProviderFor(ProfileSetupViewModel)
final profileSetupViewModelProvider = ProfileSetupViewModelProvider._();

/// 03 Profile setup. Also used to edit details from Profile & settings.
final class ProfileSetupViewModelProvider
    extends $NotifierProvider<ProfileSetupViewModel, ProfileSetupState> {
  /// 03 Profile setup. Also used to edit details from Profile & settings.
  ProfileSetupViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileSetupViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileSetupViewModelHash();

  @$internal
  @override
  ProfileSetupViewModel create() => ProfileSetupViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileSetupState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileSetupState>(value),
    );
  }
}

String _$profileSetupViewModelHash() =>
    r'1b455d750dd7e5ad509fcc789a8e9656af57c3c4';

/// 03 Profile setup. Also used to edit details from Profile & settings.

abstract class _$ProfileSetupViewModel extends $Notifier<ProfileSetupState> {
  ProfileSetupState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ProfileSetupState, ProfileSetupState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileSetupState, ProfileSetupState>,
              ProfileSetupState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
