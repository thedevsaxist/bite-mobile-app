// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_sign_in_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(socialSignInDataSource)
final socialSignInDataSourceProvider = SocialSignInDataSourceProvider._();

final class SocialSignInDataSourceProvider
    extends
        $FunctionalProvider<
          SocialSignInDataSource,
          SocialSignInDataSource,
          SocialSignInDataSource
        >
    with $Provider<SocialSignInDataSource> {
  SocialSignInDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socialSignInDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socialSignInDataSourceHash();

  @$internal
  @override
  $ProviderElement<SocialSignInDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SocialSignInDataSource create(Ref ref) {
    return socialSignInDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SocialSignInDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SocialSignInDataSource>(value),
    );
  }
}

String _$socialSignInDataSourceHash() =>
    r'80871197f4c8c4a181c95dc2ab1dfa980a1b0d54';
