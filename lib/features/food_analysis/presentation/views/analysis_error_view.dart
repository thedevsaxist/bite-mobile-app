import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/section_label.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';

/// 10 Couldn't analyse — shown when the photo can't be read.
class AnalysisErrorView extends ConsumerWidget {
  const AnalysisErrorView({super.key});

  static const _tips = [
    'Use good light, no flash glare',
    'Hold the phone above the plate',
    'Keep the whole plate in view',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final reason = ref.watch(
      scanSessionViewModelProvider.select((s) => s.unreadableReason),
    );

    void close() => context.go(AppRoutes.home);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.xs,
            AppSpacing.xl,
            AppSpacing.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpacing.xl,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: AppIconButton.close(onPressed: close),
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: AppSpacing.lg,
                      children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: const BoxDecoration(
                            color: AppColors.warningContainer,
                            shape: BoxShape.circle,
                          ),
                          // UIcons camera-slash (Flaticon); not in the uicons
                          // package, so it ships as an SVG.
                          child: SvgPicture.asset(
                            'assets/icons/camera-slash.svg',
                            width: 44,
                            height: 44,
                            colorFilter: const ColorFilter.mode(
                              AppColors.warning,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        Column(
                          spacing: AppSpacing.xs,
                          children: [
                            Text(
                              "We couldn't read this photo",
                              textAlign: TextAlign.center,
                              style: textTheme.headlineSmall,
                            ),
                            Text(
                              // The backend says why, e.g. "The image is too
                              // blurry. Take a clearer photo".
                              reason ??
                                  'The image is too blurry, too dark, or the '
                                      "food isn't clear enough to recognise.",
                              textAlign: TextAlign.center,
                              style: textTheme.bodyMedium?.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppSpacing.md),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundMuted,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: AppColors.border),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: AppSpacing.sm,
                            children: [
                              const SectionLabel('Try this'),
                              for (final (i, tip) in _tips.indexed)
                                Row(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      '${i + 1}.',
                                      style: textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.accentText,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        tip,
                                        style: textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppSpacing.xxs,
                children: [
                  PrimaryButton(
                    label: 'Retake photo',
                    onPressed: () => context.pushReplacement(AppRoutes.capture),
                  ),
                  TertiaryButton(
                    label: 'Choose another photo',
                    onPressed: () async {
                      final picked = await ref
                          .read(scanSessionViewModelProvider.notifier)
                          .pickFromGallery();
                      if (picked && context.mounted) {
                        context.pushReplacement(AppRoutes.mealDetails);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
