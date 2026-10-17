import 'dart:ui';

import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:calorie_estimator/core/widgets/scan_meal_button.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

class _Tab {
  const _Tab(this.label, this.icon, this.selectedIcon);

  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

const _tabs = [
  _Tab('Today', AppIcons.home, AppIcons.homeSelected),
  _Tab('History', AppIcons.history, AppIcons.historySelected),
];

/// Hosts the Today and History tabs.
///
/// iOS: a floating frosted-glass tab bar with the scan button beside it.
/// Android: a Material 3 navigation bar (the scan button lives in each
/// page's header instead).
class MainShell extends StatelessWidget {
  const MainShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _selectTab(int index) => navigationShell.goBranch(
    index,
    initialLocation: index == navigationShell.currentIndex,
  );

  @override
  Widget build(BuildContext context) {
    if (!isCupertinoPlatform(context)) {
      return Scaffold(
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _selectTab,
          destinations: [
            for (final tab in _tabs)
              NavigationDestination(
                icon: Icon(tab.icon),
                selectedIcon: Icon(tab.selectedIcon),
                label: tab.label,
              ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          navigationShell,
          Positioned(
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: 0,
            child: SafeArea(
              top: false,
              minimum: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: Row(
                spacing: AppSpacing.sm,
                children: [
                  Expanded(
                    child: _GlassTabBar(
                      currentIndex: navigationShell.currentIndex,
                      onSelected: _selectTab,
                    ),
                  ),
                  ScanMealButton(
                    floating: true,
                    onPressed: () => context.push(AppRoutes.capture),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassTabBar extends StatelessWidget {
  const _GlassTabBar({required this.currentIndex, required this.onSelected});

  final int currentIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        boxShadow: const [
          BoxShadow(
            color: Color(0x2414201A),
            blurRadius: 30,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
          child: Container(
            height: 64,
            padding: const EdgeInsets.all(AppSpacing.xxs),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: Colors.white.withValues(alpha: 0.85)),
            ),
            child: Row(
              spacing: AppSpacing.xxs,
              children: [
                for (final (index, tab) in _tabs.indexed)
                  Expanded(
                    child: Semantics(
                      selected: index == currentIndex,
                      button: true,
                      child: Material(
                        color: index == currentIndex
                            ? AppColors.textPrimary.withValues(alpha: 0.07)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(28),
                        child: InkWell(
                          onTap: () => onSelected(index),
                          borderRadius: BorderRadius.circular(28),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 2,
                            children: [
                              Icon(
                                index == currentIndex
                                    ? tab.selectedIcon
                                    : tab.icon,
                                size: 22,
                                color: index == currentIndex
                                    ? AppColors.accentText
                                    : AppColors.textPrimary,
                              ),
                              Text(
                                tab.label,
                                style: textTheme.labelSmall?.copyWith(
                                  fontSize: 11,
                                  fontWeight: index == currentIndex
                                      ? FontWeight.w700
                                      : FontWeight.w600,
                                  color: index == currentIndex
                                      ? AppColors.accentText
                                      : AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
