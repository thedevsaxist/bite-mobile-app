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
import 'package:calorie_estimator/core/widgets/app_loader.dart';
import 'package:calorie_estimator/core/widgets/app_snack_bar.dart';
import 'package:calorie_estimator/core/widgets/meal_photo.dart';
import 'package:calorie_estimator/core/widgets/section_label.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/widgets/edit_item_sheet.dart';
import 'package:uicons/uicons.dart';

/// 08 Result — recognised items and the estimated calories.
class ResultView extends ConsumerWidget {
  const ResultView({super.key});

  static const _photoHeight = 186.0;
  static const _sheetOverlap = 36.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scanSessionViewModelProvider);
    final topInset = MediaQuery.paddingOf(context).top;

    ref.listen(scanSessionViewModelProvider.select((s) => s.errorMessage), (
      _,
      message,
    ) {
      if (message != null) showAppSnackBar(context, message);
    });

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
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: MealPhoto(
                filePath: state.imagePath,
                url: state.imageUrl,
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
                child: switch (state) {
                  ScanSessionState(isLoading: true) => const AppLoadingView(
                    message: 'Loading your meal…',
                  ),
                  ScanSessionState(:final loadError?) => _LoadError(
                    message: loadError,
                    onRetry: () => ref
                        .read(scanSessionViewModelProvider.notifier)
                        .openSavedMeal(state.mealId!),
                  ),
                  ScanSessionState(hasResult: false) => const Center(
                    child: Text('No result to show.'),
                  ),
                  _ => _ResultSheet(state: state, onDone: close),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadError extends StatelessWidget {
  const _LoadError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppSpacing.screenPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpacing.sm,
          children: [
            Text(message, textAlign: TextAlign.center),
            TextButton(onPressed: onRetry, child: const Text('Try again')),
          ],
        ),
      ),
    );
  }
}

class _ResultSheet extends ConsumerWidget {
  const _ResultSheet({required this.state, required this.onDone});

  final ScanSessionState state;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(scanSessionViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;
    final totals = state.totals;
    final totalCalories = totals.calories.round();
    final reference = state.dailyReference;
    final unmatched = state.unmatchedItemCount;

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
                    eatenAt: state.eatenAt,
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
                              text: '${formatNumber(totalCalories)} ',
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
                    // Needs a daily reference, i.e. a profile.
                    if (reference != null && reference > 0)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          '${(totalCalories / reference * 100).round()}% of '
                          'your day',
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
                    _MacroTile(label: 'Protein', grams: totals.protein.round()),
                    _MacroTile(
                      label: 'Carbs',
                      grams: totals.carbohydrates.round(),
                    ),
                    _MacroTile(label: 'Fat', grams: totals.fat.round()),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                SectionLabel(
                  state.items.length == 1
                      ? 'We found 1 item'
                      : 'We found ${state.items.length} items',
                ),
                const SizedBox(height: AppSpacing.xxs),
                for (final (index, item) in state.items.indexed) ...[
                  if (index > 0) const Divider(),
                  _ItemRow(
                    item: item,
                    color:
                        AppColors.foodItemColors[index %
                            AppColors.foodItemColors.length],
                    onTap: state.isBusy
                        ? null
                        : () => showEditItemSheet(context, item),
                  ),
                ],
                const SizedBox(height: AppSpacing.md),
                Text(
                  [
                    AppConstants.estimateDisclaimer,
                    // Unmatched foods get no made-up calories.
                    if (unmatched == 1)
                      "1 item isn't in our food data, so it isn't counted. "
                          'Tap it to pick the closest food.'
                    else if (unmatched > 1)
                      "$unmatched items aren't in our food data, so they "
                          "aren't counted. Tap one to pick the closest food.",
                    'Tap an item to fix it.',
                  ].join(' '),
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
                    loadingLabel: 'Saving',
                    isLoading: state.isBusy,
                    onPressed: () async {
                      if (await viewModel.saveResult()) onDone();
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
                    onPressed: state.isBusy ? null : viewModel.disputeResult,
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
  const _SaveStatusChip({
    required this.saved,
    required this.mealLabel,
    required this.eatenAt,
  });

  final bool saved;
  final String mealLabel;
  final DateTime? eatenAt;

  bool get _isToday {
    final now = DateTime.now();
    final date = eatenAt ?? now;
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  @override
  Widget build(BuildContext context) {
    final foreground = saved
        ? AppColors.onAccentContainer
        : AppColors.warningDark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: saved ? AppColors.accentContainer : AppColors.warningContainer,
        borderRadius: BorderRadius.circular(AppRadii.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          if (saved)
            Icon(UIcons.regularRounded.check, size: 14, color: foreground),
          Text(
            switch ((saved, _isToday)) {
              (true, true) => 'Saved to today · $mealLabel',
              (true, false) =>
                'Saved · $mealLabel, ${formatShortDate(eatenAt!)}',
              _ => 'Not saved yet · check and save',
            },
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

  final MealItem item;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final calories = item.nutrients?.calories.round();

    return Semantics(
      button: true,
      label:
          '${item.displayName}, ${item.portionLabel}, '
          '${calories == null ? 'no calorie estimate' : formatKcal(calories)}. '
          'Edit',
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
                    Text(item.displayName, style: textTheme.titleSmall),
                    Text(
                      item.nutrients == null
                          ? '${item.portionLabel} · not in our food data'
                          : item.portionLabel,
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Text(
                calories == null ? '—' : formatNumber(calories),
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(
                UIcons.regularRounded.pencil,
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
