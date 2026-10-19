// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_timezone.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(deviceTimezone)
final deviceTimezoneProvider = DeviceTimezoneProvider._();

final class DeviceTimezoneProvider
    extends $FunctionalProvider<DeviceTimezone, DeviceTimezone, DeviceTimezone>
    with $Provider<DeviceTimezone> {
  DeviceTimezoneProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deviceTimezoneProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceTimezoneHash();

  @$internal
  @override
  $ProviderElement<DeviceTimezone> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeviceTimezone create(Ref ref) {
    return deviceTimezone(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceTimezone value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceTimezone>(value),
    );
  }
}

String _$deviceTimezoneHash() => r'3791870a7db3b83bc935e733a7605d60a5b12707';
