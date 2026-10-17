import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';

/// Small uppercase heading, e.g. "WE FOUND 3 ITEMS" or "YOUR DETAILS".
class SectionLabel extends StatelessWidget {
  const SectionLabel(this.text, {this.color, super.key});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: color ?? AppColors.textSecondary,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

/// A small icon in a rounded square / circle, as in onboarding lists.
class IconBadge extends StatelessWidget {
  const IconBadge({
    required this.icon,
    this.size = 44,
    this.filled = false,
    this.circle = false,
    super.key,
  });

  final IconData icon;
  final double size;

  /// Solid green with a white icon instead of a light green tint.
  final bool filled;
  final bool circle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: filled ? AppColors.primary : AppColors.accentContainer,
        shape: circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circle ? null : BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        size: size / 2,
        color: filled ? Colors.white : AppColors.onAccentContainer,
      ),
    );
  }
}
