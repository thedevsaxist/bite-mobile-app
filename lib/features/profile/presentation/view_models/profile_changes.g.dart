// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_changes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Bumped whenever the profile is saved. View models that show the profile
/// or daily reference (Home, Settings) watch it to reload.

@ProviderFor(ProfileChanges)
final profileChangesProvider = ProfileChangesProvider._();

/// Bumped whenever the profile is saved. View models that show the profile
/// or daily reference (Home, Settings) watch it to reload.
final class ProfileChangesProvider
    extends $NotifierProvider<ProfileChanges, int> {
  /// Bumped whenever the profile is saved. View models that show the profile
  /// or daily reference (Home, Settings) watch it to reload.
  ProfileChangesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileChangesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileChangesHash();

  @$internal
  @override
  ProfileChanges create() => ProfileChanges();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$profileChangesHash() => r'f9843149ee3c6220cec44c2164df7f9c2992c718';

/// Bumped whenever the profile is saved. View models that show the profile
/// or daily reference (Home, Settings) watch it to reload.

abstract class _$ProfileChanges extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
