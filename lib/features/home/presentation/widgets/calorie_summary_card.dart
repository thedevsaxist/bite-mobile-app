import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/features/home/domain/entities/daily_summary.dart';

/// Ring of calories eaten vs. the daily reference, with the two totals.
class CalorieSummaryCard extends StatelessWidget {
  const CalorieSummaryCard({required this.summary, super.key});

  final DailySummary summary;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        spacing: AppSpacing.lg,
        children: [
          Semantics(
            label:
                '${formatNumber(summary.eatenCalories)} of '
                '${formatKcal(summary.dailyReference)} eaten',
            excludeSemantics: true,
            child: SizedBox.square(
              dimension: 128,
              child: CustomPaint(
                painter: _RingPainter(progress: summary.progress),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        formatNumber(summary.remainingCalories),
                        style: textTheme.headlineSmall,
                      ),
                      Text('kcal left', style: textTheme.labelSmall),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.sm,
              children: [
                _Total(
                  label: 'Eaten today',
                  value: formatKcal(summary.eatenCalories),
                ),
                _Total(
                  label: 'Daily reference',
                  value: formatKcal(summary.dailyReference),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Total extends StatelessWidget {
  const _Total({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 2,
      children: [
        Text(
          label,
          style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(value, style: textTheme.titleLarge?.copyWith(fontSize: 20)),
      ],
    );
  }
}

class _RingPainter extends CustomPainter {
  const _RingPainter({required this.progress});

  final double progress;

  static const _strokeWidth = 12.0;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final arcRect = rect.deflate(_strokeWidth / 2 + 4);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = _strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      arcRect,
      0,
      math.pi * 2,
      false,
      paint..color = AppColors.progressTrack,
    );
    if (progress > 0) {
      canvas.drawArc(
        arcRect,
        -math.pi / 2,
        math.pi * 2 * progress,
        false,
        paint..color = AppColors.accent,
      );
    }
  }

  @override
  bool shouldRepaint(_RingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

/// Protein / Carbs / Fat totals in one card, separated by dividers.
class MacroTotalsCard extends StatelessWidget {
  const MacroTotalsCard({
    required this.proteinGrams,
    required this.carbsGrams,
    required this.fatGrams,
    super.key,
  });

  final int proteinGrams;
  final int carbsGrams;
  final int fatGrams;

  @override
  Widget build(BuildContext context) {
    Widget divider() => const SizedBox(
      height: 36,
      child: VerticalDivider(width: 1, color: AppColors.border),
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.md,
        horizontal: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F14201A),
            blurRadius: 14,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _Macro(grams: proteinGrams, label: 'Protein'),
          ),
          divider(),
          Expanded(
            child: _Macro(grams: carbsGrams, label: 'Carbs'),
          ),
          divider(),
          Expanded(
            child: _Macro(grams: fatGrams, label: 'Fat'),
          ),
        ],
      ),
    );
  }
}

class _Macro extends StatelessWidget {
  const _Macro({required this.grams, required this.label});

  final int grams;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Semantics(
      label: '$label $grams grams',
      excludeSemantics: true,
      child: Column(
        spacing: 2,
        children: [
          Text(
            '${grams}g',
            style: textTheme.headlineSmall?.copyWith(fontSize: 26),
          ),
          Text(
            label,
            style: textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
