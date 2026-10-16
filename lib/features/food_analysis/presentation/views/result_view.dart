import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';
import 'package:calorie_estimator/core/widgets/section_label.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/widgets/edit_item_sheet.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// 08 Result — recognised items and the estimated calories.
class ResultView extends ConsumerWidget {
  const ResultView({super.key});

  static const _photoHeight = 186.0;
  static const _sheetOverlap = 36.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scanSessionViewModelProvider);
    final analysis = state.analysis;
    final topInset = MediaQuery.paddingOf(context).top;

    // After a scan, closing returns to Home; from Home/History it goes back.
    void close() => state.step == AnalysisStep.done
        ? context.go(AppRoutes.home)
        : context.pop();

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.surfaceDark,
        body: Stack(
          children: [
            // TODO: show the analysed photo (state.imagePath / image URL).
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: MealPhotoPlaceholder(
                height: _photoHeight + topInset,
                plateSize: 150,
                platePadding: EdgeInsets.only(top: topInset + 8),
                child: Positioned(
                  left: AppSpacing.lg,
                  top: topInset + AppSpacing.xs,
                  child: AppIconButton.close(
                    style: AppIconButtonStyle.overlay,
                    semanticLabel: 'Close result',
                    onPressed: close,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: _photoHeight + topInset - _sheetOverlap,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: analysis == null
                    ? const Center(child: Text('No result to show.'))
                    : _ResultSheet(
                        state: state,
                        analysis: analysis,
                        onDone: close,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultSheet extends ConsumerWidget {
  const _ResultSheet({
    required this.state,
    required this.analysis,
    required this.onDone,
  });

  final ScanSessionState state;
  final FoodAnalysis analysis;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(scanSessionViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;
    final percentOfDay = state.dailyReference == 0
        ? 0
        : (analysis.totalCalories / state.dailyReference * 100).round();

    return SafeArea(
      top: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.lg,
                AppSpacing.lg,
                AppSpacing.md,
              ),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: _SaveStatusChip(
                    saved: state.isSaved,
                    mealLabel: state.mealType.label,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          Text(
                            'Estimated total',
                            style: textTheme.labelMedium?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: '${formatNumber(analysis.totalCalories)} ',
                              children: [
                                TextSpan(
                                  text: 'kcal',
                                  style: textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            style: textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        '$percentOfDay% of your day',
                        style: textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  spacing: AppSpacing.xs,
                  children: [
                    _MacroTile(label: 'Protein', grams: analysis.totalProtein),
                    _MacroTile(label: 'Carbs', grams: analysis.totalCarbs),
                    _MacroTile(label: 'Fat', grams: analysis.totalFat),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                SectionLabel(
                  analysis.items.length == 1
                      ? 'We found 1 item'
                      : 'We found ${analysis.items.length} items',
                ),
                const SizedBox(height: AppSpacing.xxs),
                for (final (index, item) in analysis.items.indexed) ...[
                  if (index > 0) const Divider(),
                  _ItemRow(
                    item: item,
                    color:
                        AppColors.foodItemColors[index %
                            AppColors.foodItemColors.length],
                    onTap: () => showEditItemSheet(context, item),
                  ),
                ],
                const SizedBox(height: AppSpacing.md),
                Text(
                  '${AppConstants.estimateDisclaimer} Tap an item to fix it.',
                  style: textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              0,
              AppSpacing.lg,
              AppSpacing.md,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.xxs,
              children: [
                if (state.isSaved)
                  PrimaryButton(label: 'Done', onPressed: onDone)
                else
                  PrimaryButton(
                    label: 'Looks right, save it',
                    onPressed: () async {
                      await viewModel.saveResult();
                      onDone();
                    },
                  ),
                if (state.isDisputed)
                  SizedBox(
                    height: AppSizes.minTouchTarget,
                    child: Center(
                      child: Text(
                        "Thanks. We've marked this result as incorrect.",
                        style: textTheme.labelMedium?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  )
                else
                  TertiaryButton(
                    label: 'This is wrong',
                    destructive: true,
                    onPressed: viewModel.disputeResult,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SaveStatusChip extends StatelessWidget {
  const _SaveStatusChip({required this.saved, required this.mealLabel});

  final bool saved;
  final String mealLabel;

  @override
  Widget build(BuildContext context) {
    final foreground = saved ? AppColors.primaryDark : AppColors.warningDark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: saved ? AppColors.primaryContainer : AppColors.warningContainer,
        borderRadius: BorderRadius.circular(AppRadii.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          if (saved) Icon(AppIcons.check, size: 14, color: foreground),
          Text(
            saved
                ? 'Saved to today · $mealLabel'
                : 'Not saved yet · check and save',
            style: Theme.of(context).textTheme.bodySmall
                ?.copyWith(fontWeight: FontWeight.w700, color: foreground),
          ),
        ],
      ),
    );
  }
}

class _MacroTile extends StatelessWidget {
  const _MacroTile({required this.label, required this.grams});

  final String label;
  final int grams;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Semantics(
        label: '$label $grams grams',
        excludeSemantics: true,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.surfaceMuted,
            borderRadius: BorderRadius.circular(AppRadii.sm),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 2,
            children: [
              Text(label, style: textTheme.labelSmall),
              Text('$grams g', style: textTheme.titleMedium),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({
    required this.item,
    required this.color,
    required this.onTap,
  });

  final RecognisedFoodItem item;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Semantics(
      button: true,
      label:
          '${item.name}, ${item.portionDescription}, '
          '${formatKcal(item.calories)}. Edit',
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          child: Row(
            spacing: AppSpacing.sm,
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 1,
                  children: [
                    Text(item.name, style: textTheme.titleSmall),
                    Text(item.portionDescription, style: textTheme.bodySmall),
                  ],
                ),
              ),
              Text(
                formatNumber(item.calories),
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Icon(
                AppIcons.edit,
                size: 18,
                color: AppColors.textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
