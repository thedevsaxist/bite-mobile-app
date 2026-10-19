import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:uicons/uicons.dart';

class _Tab {
  const _Tab(this.label, this.icon, this.selectedIcon);

  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

final _tabs = [
  _Tab('Today', UIcons.regularRounded.home, UIcons.solidRounded.home),
  _Tab('History', UIcons.regularRounded.stats, UIcons.solidRounded.stats),
];

/// Hosts the Today and History tabs.
///
/// iOS: a floating liquid glass tab bar with the scan button as its extra
/// button.
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
              child: _GlassTabBar(
                currentIndex: navigationShell.currentIndex,
                onSelected: _selectTab,
                onScan: () => context.push(AppRoutes.capture),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassTabBar extends StatelessWidget {
  const _GlassTabBar({
    required this.currentIndex,
    required this.onSelected,
    required this.onScan,
  });

  final int currentIndex;
  final ValueChanged<int> onSelected;
  final VoidCallback onScan;

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(context).textTheme.labelSmall
        ?.copyWith(fontSize: 11);

    return GlassTabBar.bottom(
      selectedIndex: currentIndex,
      onTabSelected: onSelected,
      // The shell already insets the bar from the screen edges.
      horizontalPadding: 0,
      verticalPadding: 0,
      spacing: AppSpacing.sm,
      extraButton: GlassTabBarExtraButton(
        icon: Icon(UIcons.regularRounded.camera, size: 26),
        iconColor: AppColors.accent,
        label: 'Scan a meal',
        onTap: onScan,
      ),
      quality: GlassQuality.premium,
      iconSize: 22,
      iconLabelSpacing: 2,
      indicatorColor: AppColors.textPrimary.withValues(alpha: 0.07),
      selectedIconColor: AppColors.accentText,
      unselectedIconColor: AppColors.textPrimary,
      selectedLabelColor: AppColors.accentText,
      unselectedLabelColor: AppColors.textPrimary,
      textStyle: labelStyle,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      tabs: [
        for (final tab in _tabs)
          GlassTab(
            icon: Icon(tab.icon),
            activeIcon: Icon(tab.selectedIcon),
            label: tab.label,
          ),
      ],
    );
  }
}
