// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_local_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileLocalDataSource)
final profileLocalDataSourceProvider = ProfileLocalDataSourceProvider._();

final class ProfileLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ProfileLocalDataSource,
          ProfileLocalDataSource,
          ProfileLocalDataSource
        >
    with $Provider<ProfileLocalDataSource> {
  ProfileLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProfileLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileLocalDataSource create(Ref ref) {
    return profileLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileLocalDataSource>(value),
    );
  }
}

String _$profileLocalDataSourceHash() =>
    r'5ec79eaa9e2aa7db5ee89ed73e52f2775ff20b31';
