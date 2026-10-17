import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_loader.dart';

/// Full-width green call-to-action.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.loadingLabel,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  /// Shown next to the loader while [isLoading], e.g. "Logging in".
  /// Defaults to [label].
  final String? loadingLabel;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: isLoading
          ? FilledButton.styleFrom(
              disabledBackgroundColor: AppColors.primary,
              disabledForegroundColor: Colors.white,
            )
          : null,
      child: isLoading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                AppLoader(
                  size: 20,
                  ringColor: Colors.white,
                  semanticLabel: loadingLabel ?? label,
                ),
                Text(loadingLabel ?? label),
              ],
            )
          : Text(label),
    );
  }
}

/// Full-width light grey button, e.g. "Log in" on the welcome screen.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.label,
    required this.onPressed,
    this.height = AppSizes.buttonHeight,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(height)),
      child: Text(label),
    );
  }
}

/// Full-width text-only button under a primary button, e.g. "Skip and
/// analyse". Set [destructive] for actions like "Remove this item".
class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    required this.label,
    required this.onPressed,
    this.destructive = false,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool destructive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size.fromHeight(AppSizes.minTouchTarget),
        foregroundColor: destructive ? AppColors.warningDark : null,
      ),
      child: Text(label),
    );
  }
}
