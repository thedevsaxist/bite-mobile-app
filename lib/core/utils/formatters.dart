import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

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

/// `16 Oct`.
String formatShortDate(DateTime date) => DateFormat('d MMM').format(date);

/// `10–16 Oct`, `28 Sep – 4 Oct`, or `16 Oct` for a single day.
String formatDateRange(DateTime from, DateTime to) {
  if (DateUtils.isSameDay(from, to)) return formatShortDate(to);
  if (from.year == to.year && from.month == to.month) {
    return '${from.day}–${formatShortDate(to)}';
  }
  return '${formatShortDate(from)} – ${formatShortDate(to)}';
}

/// `CI` from `Chidiebube Iroezindu`.
String initialsOf(String name) {
  final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
  return parts.take(2).map((p) => p[0].toUpperCase()).join();
}
