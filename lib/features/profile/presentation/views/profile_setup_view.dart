import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:uicons/uicons.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/app_segmented_control.dart';
import 'package:calorie_estimator/core/widgets/app_snack_bar.dart';
import 'package:calorie_estimator/core/widgets/async_value_view.dart';
import 'package:calorie_estimator/core/widgets/fill_scroll_view.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/core/widgets/option_button.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/profile/presentation/view_models/profile_setup_view_model.dart';

/// 03 Profile setup ("Tell us about you").
///
/// Pass [isEditing] when opened from Profile & settings: the CTA then saves
/// and goes back instead of continuing to Home.
class ProfileSetupView extends ConsumerWidget {
  const ProfileSetupView({this.isEditing = false, super.key});

  final bool isEditing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setup = ref.watch(profileSetupViewModelProvider);

    ref.listen(
      profileSetupViewModelProvider.select((s) => s.value?.errorMessage),
      (_, message) {
        if (message != null) showAppSnackBar(context, message);
      },
    );

    return Scaffold(
      body: SafeArea(
        child: AsyncValueView(
          value: setup,
          onRetry: () => ref.invalidate(profileSetupViewModelProvider),
          loadingMessage: 'Loading your details…',
          data: (state) => _ProfileForm(state: state, isEditing: isEditing),
        ),
      ),
    );
  }
}

class _ProfileForm extends ConsumerWidget {
  const _ProfileForm({required this.state, required this.isEditing});

  final ProfileSetupState state;
  final bool isEditing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(profileSetupViewModelProvider.notifier);
    final profile = state.profile;
    final textTheme = Theme.of(context).textTheme;

    Future<void> save() async {
      final saved = await viewModel.save();
      if (!saved || !context.mounted) return;
      isEditing ? context.pop() : context.go(AppRoutes.home);
    }

    final digitsOnly = [FilteringTextInputFormatter.digitsOnly];
    final decimal = [
      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,1}')),
    ];

    return FillScrollView(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // After sign-up this is the first page, so back means the
              // same as Skip.
              AppIconButton.back(
                onPressed: context.canPop()
                    ? null
                    : () => context.go(AppRoutes.home),
              ),
              if (!isEditing)
                TextButton(
                  onPressed: () async {
                    await viewModel.skip();
                    if (context.mounted) context.go(AppRoutes.home);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textSecondary,
                  ),
                  child: const Text('Skip'),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              Text(
                isEditing ? 'Your details' : 'Tell us about you',
                style: textTheme.headlineMedium?.copyWith(fontSize: 26),
              ),
              Text(
                'We use this to estimate how many calories you need each '
                'day.',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpacing.md,
            children: [
              _TwoColumns(
                left: LabeledTextField(
                  label: 'Age',
                  compact: true,
                  initialValue: '${profile.age}',
                  keyboardType: TextInputType.number,
                  inputFormatters: digitsOnly,
                  onChanged: viewModel.setAge,
                ),
                right: _FieldLabel(
                  label: 'Sex',
                  child: AppSegmentedControl(
                    height: 48,
                    segments: {for (final s in Sex.values) s: s.label},
                    selected: profile.sex,
                    onChanged: viewModel.setSex,
                  ),
                ),
              ),
              _TwoColumns(
                left: LabeledTextField(
                  label: 'Height (cm)',
                  compact: true,
                  initialValue: _formatMeasure(profile.heightCm),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: decimal,
                  onChanged: viewModel.setHeight,
                ),
                right: LabeledTextField(
                  label: 'Weight (kg)',
                  compact: true,
                  initialValue: _formatMeasure(profile.weightKg),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: decimal,
                  onChanged: viewModel.setWeight,
                ),
              ),
              _FieldLabel(
                label: 'Activity level',
                child: DropdownButtonFormField<ActivityLevel>(
                  initialValue: profile.activityLevel,
                  isExpanded: true,
                  icon: Icon(UIcons.regularRounded.angle_small_down, size: 18),
                  borderRadius: BorderRadius.circular(AppRadii.sm),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadii.sm),
                      borderSide: const BorderSide(
                        color: AppColors.inputBorder,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadii.sm),
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                    ),
                  ),
                  style: textTheme.bodyLarge,
                  items: [
                    for (final level in ActivityLevel.values)
                      DropdownMenuItem(
                        value: level,
                        child: Text(
                          '${level.label} (${level.description})',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (level) {
                    if (level != null) viewModel.setActivityLevel(level);
                  },
                ),
              ),
              _FieldLabel(
                label: 'Your goal',
                child: OptionButtonRow(
                  options: {for (final g in WeightGoal.values) g: g.label},
                  selected: profile.goal,
                  onChanged: viewModel.setGoal,
                ),
              ),
            ],
          ),
          const Spacer(),
          _DailyReferenceCard(kcal: profile.estimatedDailyCalories),
          PrimaryButton(
            label: isEditing ? 'Save changes' : 'Get started',
            loadingLabel: 'Saving',
            isLoading: state.isSaving,
            onPressed: save,
          ),
        ],
      ),
    );
  }

  static String _formatMeasure(double value) =>
      value == value.roundToDouble() ? '${value.round()}' : '$value';
}

class _TwoColumns extends StatelessWidget {
  const _TwoColumns({required this.left, required this.right});

  final Widget left;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.sm,
      children: [
        Expanded(child: left),
        Expanded(child: right),
      ],
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel({required this.label, required this.child});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 6,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium
              ?.copyWith(fontSize: 13),
        ),
        child,
      ],
    );
  }
}

class _DailyReferenceCard extends StatelessWidget {
  const _DailyReferenceCard({required this.kcal});

  final int kcal;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(AppRadii.md),
      ),
      child: Row(
        spacing: AppSpacing.sm,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  'Your daily reference',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  formatApproxKcal(kcal),
                  style: textTheme.headlineSmall?.copyWith(fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              'An estimate. You can change your details anytime.',
              textAlign: TextAlign.right,
              style: textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
