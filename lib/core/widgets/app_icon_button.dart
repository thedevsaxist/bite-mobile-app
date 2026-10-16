import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

enum AppIconButtonStyle {
  /// Light grey rounded square — the default back/close button.
  muted,

  /// White rounded square with a border (on grey backgrounds).
  outlined,

  /// White translucent circle, for use over photos.
  overlay,

  /// Dark translucent circle, for use on the camera screen.
  dark,
}

/// The 44×44 back / close buttons used across the design.
class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.icon,
    required this.semanticLabel,
    this.onPressed,
    this.style = AppIconButtonStyle.muted,
    super.key,
  });

  /// Back chevron. Pops the current route when [onPressed] is null.
  const AppIconButton.back({
    this.onPressed,
    this.style = AppIconButtonStyle.muted,
    this.semanticLabel = 'Back',
    super.key,
  }) : icon = AppIcons.back;

  /// Close cross. Pops the current route when [onPressed] is null.
  const AppIconButton.close({
    this.onPressed,
    this.style = AppIconButtonStyle.muted,
    this.semanticLabel = 'Close',
    super.key,
  }) : icon = AppIcons.close;

  final IconData icon;
  final String semanticLabel;
  final VoidCallback? onPressed;
  final AppIconButtonStyle style;

  @override
  Widget build(BuildContext context) {
    final (background, foreground, shape) = switch (style) {
      AppIconButtonStyle.muted => (
        AppColors.surfaceMuted,
        AppColors.textPrimary,
        _roundedSquare(),
      ),
      AppIconButtonStyle.outlined => (
        AppColors.background,
        AppColors.textPrimary,
        _roundedSquare(const BorderSide(color: AppColors.border)),
      ),
      AppIconButtonStyle.overlay => (
        Colors.white.withValues(alpha: 0.92),
        AppColors.textPrimary,
        const CircleBorder(),
      ),
      AppIconButtonStyle.dark => (
        Colors.white.withValues(alpha: 0.12),
        Colors.white,
        const CircleBorder(),
      ),
    };

    return Semantics(
      button: true,
      label: semanticLabel,
      child: Material(
        color: background,
        shape: shape,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed ?? () => context.pop(),
          child: SizedBox.square(
            dimension: AppSizes.minTouchTarget,
            child: Icon(icon, size: 20, color: foreground),
          ),
        ),
      ),
    );
  }

  static ShapeBorder _roundedSquare([BorderSide side = BorderSide.none]) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadii.sm),
        side: side,
      );
}
