import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/fill_scroll_view.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/core/widgets/option_button.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';
import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/view_models/scan_session_view_model.dart';

/// 06 Meal details (optional context before analysis).
class MealDetailsView extends ConsumerWidget {
  const MealDetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scanSessionViewModelProvider);
    final viewModel = ref.read(scanSessionViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;

    void analyse({bool skipDetails = false}) {
      if (skipDetails) {
        viewModel
          ..setDescription('')
          ..setNotes('');
      }
      context.push(AppRoutes.analysing);
    }

    return Scaffold(
      body: SafeArea(
        child: FillScrollView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.xs,
            AppSpacing.xl,
            AppSpacing.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpacing.lg,
            children: [
              Row(
                spacing: AppSpacing.sm,
                children: [
                  const AppIconButton.back(semanticLabel: 'Back to camera'),
                  Text(
                    'Your photo',
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              // TODO: show Image.file(state.imagePath) once capture is wired.
              MealPhotoPlaceholder(
                height: 168,
                plateSize: 136,
                borderRadius: BorderRadius.circular(20),
                child: Positioned(
                  right: 12,
                  bottom: 12,
                  child: _RetakeChip(onPressed: () => context.pop()),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacing.xxs,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Add a few details ',
                      children: [
                        TextSpan(
                          text: '(optional)',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    style: textTheme.headlineSmall?.copyWith(fontSize: 22),
                  ),
                  Text(
                    'This helps us give you a closer estimate.',
                    style: textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              LabeledTextField(
                label: "What's on the plate?",
                hint: 'e.g. Jollof rice with chicken',
                compact: true,
                initialValue: state.description,
                textInputAction: TextInputAction.next,
                onChanged: viewModel.setDescription,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppSpacing.xs,
                children: [
                  Text(
                    'Portion size',
                    style: textTheme.labelMedium?.copyWith(fontSize: 13),
                  ),
                  OptionButtonRow(
                    height: 44,
                    options: {for (final p in MealPortion.values) p: p.label},
                    selected: state.portion,
                    onChanged: viewModel.setPortion,
                  ),
                ],
              ),
              LabeledTextField(
                label: "Anything we can't see?",
                hint: 'Ingredients, cooking oil, sauces…',
                compact: true,
                maxLines: 2,
                initialValue: state.notes,
                onChanged: viewModel.setNotes,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppSpacing.xxs,
                children: [
                  PrimaryButton(label: 'Analyse meal', onPressed: analyse),
                  TertiaryButton(
                    label: 'Skip and analyse',
                    onPressed: () => analyse(skipDetails: true),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RetakeChip extends StatelessWidget {
  const _RetakeChip({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.92),
      shape: const StadiumBorder(),
      child: InkWell(
        onTap: onPressed,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Text(
            'Retake',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
