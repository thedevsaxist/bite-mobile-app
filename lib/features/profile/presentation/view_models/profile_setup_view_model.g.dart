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
    extends $AsyncNotifierProvider<ProfileSetupViewModel, ProfileSetupState> {
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
}

String _$profileSetupViewModelHash() =>
    r'6b6af58524720cfc5ab158b5b01c12cc70e3db61';

/// 03 Profile setup. Also used to edit details from Profile & settings.

abstract class _$ProfileSetupViewModel
    extends $AsyncNotifier<ProfileSetupState> {
  FutureOr<ProfileSetupState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProfileSetupState>, ProfileSetupState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProfileSetupState>, ProfileSetupState>,
              AsyncValue<ProfileSetupState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
