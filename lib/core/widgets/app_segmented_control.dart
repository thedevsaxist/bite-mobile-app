import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';

/// The pill-shaped segmented control from the design (Sign up / Log in,
/// Male / Female, Day / Week / Month).
class AppSegmentedControl<T> extends StatelessWidget {
  const AppSegmentedControl({
    required this.segments,
    required this.selected,
    required this.onChanged,
    this.height = AppSizes.minTouchTarget + 8,
    this.trackColor = AppColors.surfaceMuted,
    super.key,
  });

  /// Value → label, in display order.
  final Map<T, String> segments;
  final T selected;
  final ValueChanged<T> onChanged;
  final double height;
  final Color trackColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: height,
      padding: const EdgeInsets.all(AppSpacing.xxs),
      decoration: BoxDecoration(
        color: trackColor,
        borderRadius: BorderRadius.circular(AppRadii.input),
      ),
      child: Row(
        spacing: AppSpacing.xxs,
        children: [
          for (final MapEntry(key: value, value: label) in segments.entries)
            Expanded(
              child: Semantics(
                selected: value == selected,
                button: true,
                child: GestureDetector(
                  onTap: () => onChanged(value),
                  behavior: HitTestBehavior.opaque,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: value == selected
                          ? AppColors.background
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(AppRadii.xs),
                      boxShadow: value == selected
                          ? const [
                              BoxShadow(
                                color: Color(0x1F14201A),
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ]
                          : null,
                    ),
                    child: Text(
                      label,
                      style: textTheme.labelMedium?.copyWith(
                        fontSize: 15,
                        fontWeight: value == selected
                            ? FontWeight.w700
                            : FontWeight.w600,
                        color: value == selected
                            ? AppColors.textPrimary
                            : AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
