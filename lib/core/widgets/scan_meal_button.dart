import 'dart:ui';

import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// The round green camera button that starts a scan.
///
/// [floating] is the larger frosted-glass version in the iOS tab bar; the
/// default is the 48px button in Android headers.
class ScanMealButton extends StatelessWidget {
  const ScanMealButton({
    required this.onPressed,
    this.floating = false,
    super.key,
  });

  final VoidCallback onPressed;
  final bool floating;

  @override
  Widget build(BuildContext context) {
    final size = floating ? 64.0 : 48.0;

    final button = Material(
      color: floating
          ? AppColors.accent.withValues(alpha: 0.88)
          : AppColors.accent,
      shape: CircleBorder(
        side: floating
            ? BorderSide(color: Colors.white.withValues(alpha: 0.45))
            : BorderSide.none,
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: SizedBox.square(
          dimension: size,
          child: Icon(
            AppIcons.camera,
            color: Colors.white,
            size: floating ? 26 : 24,
          ),
        ),
      ),
    );

    return Semantics(
      label: 'Scan a meal',
      button: true,
      excludeSemantics: true,
      child: floating
          ? DecoratedBox(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x59FF5A1F),
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
                  child: button,
                ),
              ),
            )
          : button,
    );
  }
}
