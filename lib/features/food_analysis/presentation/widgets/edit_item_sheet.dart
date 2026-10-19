import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/core/widgets/option_button.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/edit_item_view_model.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';
import 'package:uicons/uicons.dart';

/// 09 Edit item, as a modal bottom sheet over the result.
Future<void> showEditItemSheet(BuildContext context, MealItem item) {
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

  final MealItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = editItemViewModelProvider(item);
    final state = ref.watch(provider);
    final viewModel = ref.read(provider.notifier);
    final session = ref.read(scanSessionViewModelProvider.notifier);
    final isBusy = ref.watch(
      scanSessionViewModelProvider.select((s) => s.isBusy),
    );
    final textTheme = Theme.of(context).textTheme;
    final estimate = state.estimate;

    // Closes once the change is applied (for a saved meal, once the backend
    // has it); a failure shows on the result screen and keeps the sheet.
    Future<void> apply(Future<bool> Function() change) async {
      if (await change() && context.mounted) Navigator.pop(context);
    }

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.xs,
              children: [
                // Keyed by the reference so picking a food updates the text.
                LabeledTextField(
                  key: ValueKey(state.reference?.id),
                  label: 'Food',
                  initialValue: state.name,
                  textInputAction: TextInputAction.done,
                  onChanged: viewModel.setName,
                ),
                if (state.suggestions.isNotEmpty)
                  _FoodSuggestions(
                    foods: state.suggestions,
                    onSelected: viewModel.selectFood,
                  ),
                Text(
                  state.reference == null
                      ? "This food isn't in our food data yet. Type to pick the "
                            'closest one and get an estimate.'
                      : 'Nutrition from our food data: ${state.reference!.name}.',
                  style: textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
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
                      icon: UIcons.regularRounded.minus,
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
                                  text:
                                      state.unit == PortionUnit.servings &&
                                          state.quantity == 1
                                      ? 'serving'
                                      : state.unit.symbol,
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
                      icon: UIcons.regularRounded.plus,
                      semanticLabel: 'More',
                      onPressed: viewModel.increment,
                    ),
                  ],
                ),
                OptionButtonRow(
                  height: 40,
                  options: {for (final u in state.units) u: u.label},
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
                    estimate == null
                        ? '—'
                        : formatApproxKcal(estimate.calories.round()),
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
                  loadingLabel: 'Saving',
                  isLoading: isBusy,
                  onPressed: () => apply(
                    () => session.updateItem(viewModel.buildUpdatedItem()),
                  ),
                ),
                TertiaryButton(
                  label: 'Remove this item',
                  destructive: true,
                  onPressed: isBusy
                      ? null
                      : () => apply(() => session.removeItem(item.id)),
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

/// Reference foods matching the typed name.
class _FoodSuggestions extends StatelessWidget {
  const _FoodSuggestions({required this.foods, required this.onSelected});

  final List<NutritionFood> foods;
  final ValueChanged<NutritionFood> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadii.input),
        border: Border.all(color: AppColors.inputBorder),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          for (final (index, food) in foods.indexed) ...[
            if (index > 0) const Divider(height: 1),
            InkWell(
              onTap: () => onSelected(food),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                child: Row(
                  spacing: AppSpacing.sm,
                  children: [
                    Expanded(
                      child: Text(food.name, style: textTheme.titleSmall),
                    ),
                    Text(
                      '${formatApproxKcal(food.nutrientsFor(1, PortionUnit.servings).calories.round())}'
                      ' · ${food.typicalServingLabel}',
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
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
