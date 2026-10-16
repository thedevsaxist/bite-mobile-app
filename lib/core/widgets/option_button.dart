import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';

/// A selectable bordered option (goal, portion size, unit). Selected options
/// get a thick green border and a green tint.
class OptionButton extends StatelessWidget {
  const OptionButton({
    required this.label,
    required this.selected,
    required this.onTap,
    this.height = 48,
    super.key,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;
  final double height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final radius = BorderRadius.circular(
      height < 44 ? AppRadii.xs : AppRadii.sm,
    );

    return Semantics(
      selected: selected,
      button: true,
      child: Material(
        color: selected ? AppColors.primaryContainer : AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
          side: selected
              ? const BorderSide(color: AppColors.primary, width: 2)
              : const BorderSide(color: AppColors.inputBorder),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: radius,
          child: SizedBox(
            height: height,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
                    color: selected
                        ? AppColors.primaryDark
                        : AppColors.textPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Lays out [OptionButton]s in equal-width columns.
class OptionButtonRow<T> extends StatelessWidget {
  const OptionButtonRow({
    required this.options,
    required this.selected,
    required this.onChanged,
    this.height = 48,
    super.key,
  });

  /// Value → label, in display order.
  final Map<T, String> options;
  final T? selected;
  final ValueChanged<T> onChanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacing.xs,
      children: [
        for (final MapEntry(key: value, value: label) in options.entries)
          Expanded(
            child: OptionButton(
              label: label,
              selected: value == selected,
              onTap: () => onChanged(value),
              height: height,
            ),
          ),
      ],
    );
  }
}
