import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

/// Daily average plus a bar per day against the dashed reference line.
///
/// Bars above the reference are orange; today's (still in progress) is
/// lighter. Without a reference (no profile yet) there is no line.
///
/// A week shows a label under every bar; a month labels every seventh day
/// back from today.
class IntakeChartCard extends StatelessWidget {
  const IntakeChartCard({
    required this.days,
    required this.dailyAverage,
    required this.dailyReference,
    required this.rangeLabel,
    super.key,
  });

  final List<DailyIntake> days;
  final int dailyAverage;
  final int? dailyReference;
  final String rangeLabel;

  bool _isAbove(DailyIntake day) =>
      dailyReference != null && day.calories > dailyReference!;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final aboveDays = days.where(_isAbove).toList();
    final reference = dailyReference;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 14,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      'Daily average · $rangeLabel',
                      style: textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      formatKcal(dailyAverage),
                      style: textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              if (reference != null)
                Text(
                  'Reference ${formatNumber(reference)}',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
          Semantics(
            label: _chartDescription(aboveDays),
            excludeSemantics: true,
            child: SizedBox(height: 164, child: _buildChart(textTheme)),
          ),
          if (reference != null)
            Wrap(
              spacing: 14,
              runSpacing: AppSpacing.xxs,
              children: [
                _LegendItem(
                  swatch: const _DashSwatch(),
                  label: 'Your reference',
                  style: textTheme.labelSmall,
                ),
                _LegendItem(
                  swatch: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.chartAboveReference,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  label: 'Above reference',
                  style: textTheme.labelSmall,
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildChart(TextTheme textTheme) {
    final maxCalories = days.fold(0, (m, d) => math.max(m, d.calories));
    // An empty range still gets a sensible scale.
    final maxY =
        math.max(math.max(maxCalories, dailyReference ?? 0), 500) * 1.08;
    final todayIndex = days.length - 1;
    final isMonth = days.length > 7;

    return BarChart(
      BarChartData(
        maxY: maxY.toDouble(),
        minY: 0,
        alignment: BarChartAlignment.spaceBetween,
        barTouchData: const BarTouchData(enabled: false),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(
          show: true,
          border: const Border(bottom: BorderSide(color: AppColors.border)),
        ),
        extraLinesData: ExtraLinesData(
          horizontalLines: [
            if (dailyReference case final reference?)
              HorizontalLine(
                y: reference.toDouble(),
                color: AppColors.textPlaceholder,
                strokeWidth: 2,
                dashArray: [6, 4],
              ),
          ],
        ),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(),
          rightTitles: const AxisTitles(),
          topTitles: const AxisTitles(),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 24,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                final isToday = index == todayIndex;
                if (isMonth && (todayIndex - index) % 7 != 0) {
                  return const SizedBox.shrink();
                }
                return SideTitleWidget(
                  meta: meta,
                  space: 6,
                  child: Text(
                    switch (days[index].date) {
                      _ when isToday => 'Today',
                      final date when isMonth => formatShortDate(date),
                      final date => DateFormat.E().format(date),
                    },
                    style: textTheme.labelSmall?.copyWith(
                      color: isToday ? AppColors.textPrimary : null,
                      fontWeight: isToday ? FontWeight.w800 : null,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        barGroups: [
          for (final (index, day) in days.indexed)
            BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: day.calories.toDouble(),
                  width: isMonth ? 6 : 28,
                  color: switch (day) {
                    _ when index == todayIndex => AppColors.chartInProgress,
                    _ when _isAbove(day) => AppColors.chartAboveReference,
                    _ => AppColors.primary,
                  },
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                    bottom: Radius.circular(2),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  String _chartDescription(List<DailyIntake> aboveDays) {
    if (aboveDays.isEmpty) {
      return 'Calories per day. Every day was at or below your reference.';
    }
    final above = aboveDays
        .map(
          (d) =>
              '${DateFormat.EEEE().format(d.date)} ${formatNumber(d.calories)}',
        )
        .join(', ');
    return 'Calories per day. Above your reference: $above. '
        'Other days were below.';
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({required this.swatch, required this.label, this.style});

  final Widget swatch;
  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        swatch,
        Text(label, style: style),
      ],
    );
  }
}

class _DashSwatch extends StatelessWidget {
  const _DashSwatch();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 6,
            height: 2,
            child: ColoredBox(color: AppColors.textPlaceholder),
          ),
          SizedBox(
            width: 6,
            height: 2,
            child: ColoredBox(color: AppColors.textPlaceholder),
          ),
        ],
      ),
    );
  }
}
