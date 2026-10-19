import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:uicons/uicons.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:calorie_estimator/core/widgets/app_segmented_control.dart';
import 'package:calorie_estimator/core/widgets/async_value_view.dart';
import 'package:calorie_estimator/core/widgets/meal_tile.dart';
import 'package:calorie_estimator/core/widgets/scan_meal_button.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/history/presentation/view_models/history_view_model.dart';
import 'package:calorie_estimator/features/history/presentation/widgets/intake_chart_card.dart';
import 'package:calorie_estimator/features/history/presentation/widgets/meal_subtitle.dart';

/// 11 History. iOS uses a pill segmented control; Android a Material 3
/// segmented button and a scan button in the header.
class HistoryView extends ConsumerWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyViewModelProvider);
    final viewModel = ref.read(historyViewModelProvider.notifier);
    final isIos = isCupertinoPlatform(context);
    final textTheme = Theme.of(context).textTheme;
    final period = history.value?.period ?? HistoryPeriod.week;

    void openMeal(String id) {
      // The result screen shows a loader until the meal arrives.
      ref.read(scanSessionViewModelProvider.notifier).openSavedMeal(id);
      context.push(AppRoutes.result);
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundMuted,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.xs,
                AppSpacing.sm,
                AppSpacing.md,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Semantics(
                      header: true,
                      child: Text(
                        'History',
                        style: textTheme.headlineMedium?.copyWith(
                          fontSize: isIos ? 26 : 24,
                        ),
                      ),
                    ),
                  ),
                  if (!isIos)
                    ScanMealButton(
                      onPressed: () => context.push(AppRoutes.capture),
                    )
                  else
                    const SizedBox(height: 48),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: isIos
                  ? AppSegmentedControl(
                      height: 48,
                      trackColor: AppColors.segmentedTrack,
                      segments: {
                        for (final p in HistoryPeriod.values) p: p.label,
                      },
                      selected: period,
                      onChanged: viewModel.setPeriod,
                    )
                  : SegmentedButton<HistoryPeriod>(
                      selectedIcon: Icon(UIcons.regularRounded.check, size: 16),
                      segments: [
                        for (final p in HistoryPeriod.values)
                          ButtonSegment(value: p, label: Text(p.label)),
                      ],
                      selected: {period},
                      onSelectionChanged: (selection) =>
                          viewModel.setPeriod(selection.single),
                    ),
            ),
            const SizedBox(height: AppSpacing.md),
            Expanded(
              child: AsyncValueView(
                value: history,
                onRetry: () => ref.invalidate(historyViewModelProvider),
                loadingMessage: 'Loading your meals…',
                data: (state) => ListView(
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    0,
                    AppSpacing.lg,
                    isIos ? AppSizes.floatingTabBarClearance : AppSpacing.lg,
                  ),
                  children: [
                    IntakeChartCard(
                      days: state.days,
                      dailyAverage: state.dailyAverage,
                      dailyReference: state.dailyReference,
                      rangeLabel: state.rangeLabel,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    if (state.groups.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.lg,
                        ),
                        child: Text(
                          state.period == HistoryPeriod.day
                              ? 'No meals yet today. Scan one to start your '
                                    'history.'
                              : 'No meals in this period yet.',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    for (final group in state.groups) ...[
                      _DayHeading(group: group),
                      for (final meal in group.meals)
                        Padding(
                          padding: const EdgeInsets.only(top: AppSpacing.xs),
                          child: MealTile(
                            title: meal.title,
                            subtitle: mealSubtitle(meal),
                            calories: meal.totalCalories,
                            onTap: () => openMeal(meal.id),
                          ),
                        ),
                      const SizedBox(height: AppSpacing.md),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayHeading extends StatelessWidget {
  const _DayHeading({required this.group});

  final MealDayGroup group;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.labelMedium
        ?.copyWith(fontWeight: FontWeight.w700);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(group.label, style: style),
        Text(
          formatKcal(group.totalCalories),
          style: style?.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
