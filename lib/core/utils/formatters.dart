import 'package:intl/intl.dart';

final _thousands = NumberFormat('#,##0');

/// `1240` → `1,240`.
String formatNumber(num value) => _thousands.format(value);

/// `1240` → `1,240 kcal`.
String formatKcal(num value) => '${formatNumber(value)} kcal';

/// `1240` → `≈ 1,240 kcal` — for values that are explicitly estimates.
String formatApproxKcal(num value) => '≈ ${formatKcal(value)}';

/// `8:05 AM`.
String formatTime(DateTime time) => DateFormat.jm().format(time);

/// `Friday, 16 Oct`.
String formatDayHeading(DateTime date) =>
    DateFormat('EEEE, d MMM').format(date);

/// `CI` from `Chidiebube Iroezindu`.
String initialsOf(String name) {
  final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
  return parts.take(2).map((p) => p[0].toUpperCase()).join();
}
