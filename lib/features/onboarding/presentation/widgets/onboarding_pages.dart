import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';
import 'package:calorie_estimator/core/widgets/section_label.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// Page 1: what the app does.
class WhatItDoesPage extends StatelessWidget {
  const WhatItDoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 28,
      children: [
        Expanded(
          child: Center(
            child: SizedBox(
              width: 280,
              height: 240,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const PlateWithBackdrop(size: 220),
                  Positioned(bottom: 12, right: 0, child: _EstimateBadge()),
                ],
              ),
            ),
          ),
        ),
        const _PageHeading(
          eyebrow: 'What ${AppConstants.appName} does',
          title: 'Calories from a photo, not a spreadsheet',
          body:
              '${AppConstants.appName} uses AI to recognise the food on your '
              'plate and estimate its calories, protein, carbs and fat. No '
              'searching or typing every item.',
        ),
      ],
    );
  }
}

/// Page 2: the three steps of a scan.
class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 28,
        children: [
          _PageHeading(
            eyebrow: 'How it works',
            title: 'Three steps, a few seconds',
            body:
                'Every result is saved to your history automatically. You '
                'can turn that off in settings.',
          ),
          Column(
            spacing: AppSpacing.sm,
            children: [
              _StepCard(
                icon: AppIcons.camera,
                title: '1. Snap your meal',
                body: 'Take a photo or pick one from your gallery.',
                highlighted: true,
              ),
              _StepCard(
                icon: AppIcons.edit,
                title: '2. Add details (optional)',
                body: 'Portion size or hidden ingredients help the estimate.',
              ),
              _StepCard(
                icon: AppIcons.check,
                title: '3. Check and save',
                body:
                    "See each food and its calories. Fix anything that's off.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Page 3: benefits, with the estimate disclaimer.
class WhyItHelpsPage extends StatelessWidget {
  const WhyItHelpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 28,
        children: [
          const _PageHeading(
            eyebrow: 'Why it helps',
            title: 'Eat with more awareness',
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 14, 12, 12),
            decoration: BoxDecoration(
              color: AppColors.surfaceMuted,
              borderRadius: BorderRadius.circular(AppRadii.sheet),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSpacing.xs,
                    children: [
                      const Icon(
                        AppIcons.info,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      Expanded(
                        child: Text(
                          'Calories are estimates from a photo and not '
                          'medical or dietary advice.',
                          style: textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                const _BenefitCard(
                  icon: AppIcons.clock,
                  title: 'Log meals in seconds',
                  body:
                      "Less effort means you're more likely to keep tracking.",
                ),
                const _BenefitCard(
                  icon: AppIcons.target,
                  title: 'Stay close to your goal',
                  body:
                      "See how much you've eaten against a daily target set "
                      'from your profile.',
                ),
                const _BenefitCard(
                  icon: AppIcons.history,
                  title: 'Spot your patterns',
                  body: 'Your history shows your intake by day, week or month.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PageHeading extends StatelessWidget {
  const _PageHeading({required this.eyebrow, required this.title, this.body});

  final String eyebrow;
  final String title;
  final String? body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        SectionLabel(eyebrow, color: AppColors.primary),
        Text(title, style: textTheme.headlineMedium),
        if (body case final body?)
          Text(
            body,
            style: textTheme.bodyLarge?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
      ],
    );
  }
}

class _EstimateBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppRadii.input),
        boxShadow: const [
          BoxShadow(
            color: Color(0x4D1E7A4C),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Estimated',
            style: textTheme.labelSmall?.copyWith(
              fontSize: 11,
              color: Colors.white.withValues(alpha: 0.85),
            ),
          ),
          Text(
            '860 kcal',
            style: textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  const _StepCard({
    required this.icon,
    required this.title,
    required this.body,
    this.highlighted = false,
  });

  final IconData icon;
  final String title;
  final String body;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.backgroundMuted,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        spacing: 14,
        children: [
          IconBadge(icon: icon, filled: highlighted),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(title, style: textTheme.titleMedium),
                Text(
                  body,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BenefitCard extends StatelessWidget {
  const _BenefitCard({
    required this.icon,
    required this.title,
    required this.body,
  });

  final IconData icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F14201A),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color(0x1414201A),
            blurRadius: 16,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        spacing: 14,
        children: [
          IconBadge(icon: icon, size: 40, circle: true),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(title, style: textTheme.titleMedium),
                Text(
                  body,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
