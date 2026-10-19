import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:calorie_estimator/core/widgets/async_value_view.dart';
import 'package:calorie_estimator/core/widgets/initials_avatar.dart';
import 'package:calorie_estimator/core/widgets/meal_tile.dart';
import 'package:calorie_estimator/core/widgets/scan_meal_button.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:calorie_estimator/features/history/presentation/widgets/meal_subtitle.dart';
import 'package:calorie_estimator/features/home/presentation/view_models/home_view_model.dart';
import 'package:calorie_estimator/features/home/presentation/widgets/calorie_summary_card.dart';

/// 04 Home (today). The iOS and Android variants differ only in the header
/// (Android has the scan button there) and the bottom navigation.
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homeViewModelProvider);
    final isIos = isCupertinoPlatform(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundMuted,
      body: SafeArea(
        bottom: false,
        child: AsyncValueView(
          value: home,
          onRetry: () => ref.invalidate(homeViewModelProvider),
          loadingMessage: 'Loading your day…',
          data: (state) => RefreshIndicator(
            onRefresh: ref.read(homeViewModelProvider.notifier).refresh,
            color: AppColors.ink,
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.xs,
                AppSpacing.lg,
                isIos ? AppSizes.floatingTabBarClearance : AppSpacing.lg,
              ),
              children: [
                _Header(name: state.userName, showScanButton: !isIos),
                const SizedBox(height: AppSpacing.lg),
                CalorieSummaryCard(summary: state.summary),
                const SizedBox(height: AppSpacing.lg),
                MacroTotalsCard(
                  proteinGrams: state.summary.proteinGrams,
                  carbsGrams: state.summary.carbsGrams,
                  fatGrams: state.summary.fatGrams,
                ),
                const SizedBox(height: AppSpacing.lg),
                _TodaysMeals(meals: state.summary.meals),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.name, required this.showScanButton});

  final String name;
  final bool showScanButton;

  @override
  Widget build(BuildContext context) {
    final firstName = name.split(' ').first;

    return Row(
      spacing: AppSpacing.sm,
      children: [
        Semantics(
          label: 'Profile and settings',
          button: true,
          excludeSemantics: true,
          child: GestureDetector(
            onTap: () => context.push(AppRoutes.settings),
            child: InitialsAvatar(name: name, size: showScanButton ? 40 : 44),
          ),
        ),
        Expanded(
          child: Text(
            'Hi, $firstName',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall
                ?.copyWith(fontSize: 22),
          ),
        ),
        if (showScanButton)
          ScanMealButton(onPressed: () => context.push(AppRoutes.capture))
        else
          const SizedBox(width: 44),
      ],
    );
  }
}

class _TodaysMeals extends ConsumerWidget {
  const _TodaysMeals({required this.meals});

  final List<MealRecord> meals;

  static const _thumbnails = [
    (AppColors.foodOrangeTint, AppColors.foodOrange, false),
    (AppColors.foodYellowTint, AppColors.foodAmber, true),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Today's meals", style: textTheme.titleLarge),
            TextButton(
              onPressed: () => context.go(AppRoutes.history),
              child: const Text('See all'),
            ),
          ],
        ),
        if (meals.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
            child: Text(
              'No meals yet today. Tap the camera to scan your first one.',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
        for (final (index, meal) in meals.indexed)
          MealTile(
            title: meal.title,
            subtitle: mealSubtitle(meal),
            calories: meal.totalCalories,
            thumbnail: MealPhotoThumbnail(
              url: meal.imageUrl,
              fallback: switch (_thumbnails[index % _thumbnails.length]) {
                (final bg, final fg, final round) => MealThumbnail(
                  background: bg,
                  foreground: fg,
                  round: round,
                ),
              },
            ),
            onTap: () {
              // The result screen shows a loader until the meal arrives.
              ref
                  .read(scanSessionViewModelProvider.notifier)
                  .openSavedMeal(meal.id);
              context.push(AppRoutes.result);
            },
          ),
      ],
    );
  }
}
