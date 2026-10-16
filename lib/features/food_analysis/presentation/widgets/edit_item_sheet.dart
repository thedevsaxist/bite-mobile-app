import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/core/widgets/option_button.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/edit_item_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// 09 Edit item, as a modal bottom sheet over the result.
Future<void> showEditItemSheet(BuildContext context, RecognisedFoodItem item) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    barrierColor: AppColors.cameraBackground.withValues(alpha: 0.55),
    builder: (_) => EditItemSheet(item: item),
  );
}

class EditItemSheet extends ConsumerWidget {
  const EditItemSheet({required this.item, super.key});

  final RecognisedFoodItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = editItemViewModelProvider(item);
    final state = ref.watch(provider);
    final viewModel = ref.read(provider.notifier);
    final textTheme = Theme.of(context).textTheme;

    // Offer the item's own unit plus the common alternatives, three at most.
    final units = {
      item.unit,
      PortionUnit.grams,
      PortionUnit.cups,
      PortionUnit.servings,
    }.take(3);

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xl,
          0,
          AppSpacing.xl,
          AppSpacing.xxl,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: AppSpacing.lg,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit item',
                  style: textTheme.headlineSmall?.copyWith(fontSize: 22),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ],
            ),
            LabeledTextField(
              label: 'Food',
              initialValue: state.name,
              textInputAction: TextInputAction.done,
              onChanged: viewModel.setName,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.xs,
              children: [
                Text(
                  'How much?',
                  style: textTheme.labelMedium?.copyWith(fontSize: 13),
                ),
                Row(
                  spacing: AppSpacing.sm,
                  children: [
                    _StepperButton(
                      icon: AppIcons.minus,
                      semanticLabel: 'Less',
                      onPressed: viewModel.decrement,
                    ),
                    Expanded(
                      child: Container(
                        height: AppSizes.inputHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppRadii.input),
                          border: Border.all(color: AppColors.inputBorder),
                        ),
                        child: Semantics(
                          liveRegion: true,
                          child: Text.rich(
                            TextSpan(
                              text: '${_formatQuantity(state.quantity)} ',
                              children: [
                                TextSpan(
                                  text: state.unit.symbol,
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                            style: textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),
                    _StepperButton(
                      icon: AppIcons.plus,
                      semanticLabel: 'More',
                      onPressed: viewModel.increment,
                    ),
                  ],
                ),
                OptionButtonRow(
                  height: 40,
                  options: {for (final u in units) u: u.label},
                  selected: state.unit,
                  onChanged: viewModel.setUnit,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.surfaceMuted,
                borderRadius: BorderRadius.circular(AppRadii.md),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New estimate',
                    style: textTheme.labelMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Text(
                    formatApproxKcal(state.estimatedCalories),
                    style: textTheme.titleLarge?.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.xxs,
              children: [
                PrimaryButton(
                  label: 'Save changes',
                  onPressed: () {
                    ref
                        .read(scanSessionViewModelProvider.notifier)
                        .updateItem(viewModel.buildUpdatedItem());
                    Navigator.pop(context);
                  },
                ),
                TertiaryButton(
                  label: 'Remove this item',
                  destructive: true,
                  onPressed: () {
                    ref
                        .read(scanSessionViewModelProvider.notifier)
                        .removeItem(item.id);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String _formatQuantity(double value) =>
      value == value.roundToDouble() ? '${value.round()}' : '$value';
}

class _StepperButton extends StatelessWidget {
  const _StepperButton({
    required this.icon,
    required this.semanticLabel,
    required this.onPressed,
  });

  final IconData icon;
  final String semanticLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: semanticLabel,
      excludeSemantics: true,
      child: Material(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(AppRadii.input),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(AppRadii.input),
          child: SizedBox.square(
            dimension: AppSizes.inputHeight,
            child: Icon(icon, color: AppColors.textPrimary),
          ),
        ),
      ),
    );
  }
}
