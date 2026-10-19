import 'package:flutter/foundation.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_timezone.g.dart';

@Riverpod(keepAlive: true)
DeviceTimezone deviceTimezone(Ref ref) => DeviceTimezone();

/// The device's IANA timezone (e.g. "Africa/Lagos"). The backend groups
/// meals into days in this timezone, so a meal at 00:30 counts for the new
/// day.
class DeviceTimezone {
  /// The backend's default.
  static const fallback = 'Africa/Lagos';

  Future<String>? _identifier;

  /// Looked up once per launch.
  Future<String> get() => _identifier ??= _lookUp();

  static Future<String> _lookUp() async {
    try {
      return (await FlutterTimezone.getLocalTimezone()).identifier;
    } catch (e) {
      debugPrint('Timezone lookup failed: $e');
      return fallback;
    }
  }
}
