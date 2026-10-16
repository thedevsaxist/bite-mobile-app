import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/async_value_view.dart';
import 'package:calorie_estimator/core/widgets/initials_avatar.dart';
import 'package:calorie_estimator/core/widgets/section_label.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';
import 'package:calorie_estimator/features/settings/presentation/view_models/settings_view_model.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// 12 Profile & settings.
class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsViewModelProvider);
    final viewModel = ref.read(settingsViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;

    Future<void> logOut() async {
      final signedOut = await viewModel.logOut();
      if (signedOut && context.mounted) context.go(AppRoutes.welcome);
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundMuted,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.xs,
                AppSpacing.lg,
                AppSpacing.md,
              ),
              child: Row(
                spacing: AppSpacing.sm,
                children: [
                  const AppIconButton.back(style: AppIconButtonStyle.outlined),
                  Text(
                    'Profile & settings',
                    style: textTheme.headlineSmall?.copyWith(fontSize: 22),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AsyncValueView(
                value: settings,
                onRetry: () => ref.invalidate(settingsViewModelProvider),
                data: (state) => ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                  ),
                  children: [
                    _AccountCard(
                      name: state.user.fullName,
                      email: state.user.email,
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SectionLabel('Your details'),
                        TextButton(
                          onPressed: () =>
                              context.push(AppRoutes.profileSetup, extra: true),
                          child: const Text('Edit'),
                        ),
                      ],
                    ),
                    _DetailsCard(
                      profile: state.profile,
                      dailyReference: state.dailyReference,
                    ),
                    const SizedBox(height: 18),
                    const SectionLabel('Preferences'),
                    const SizedBox(height: AppSpacing.xs),
                    _AutoSaveTile(
                      enabled: state.autoSaveResults,
                      onChanged: viewModel.setAutoSaveResults,
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: Column(
                spacing: AppSpacing.xs,
                children: [
                  TextButton.icon(
                    onPressed: logOut,
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.warningDark,
                      minimumSize: const Size(0, 48),
                      textStyle: textTheme.labelLarge,
                    ),
                    icon: const Icon(AppIcons.logOut, size: 20),
                    label: const Text('Log out'),
                  ),
                  Text(
                    '${AppConstants.appName} · ${AppConstants.appVersionLabel}',
                    style: textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({required this.name, required this.email});

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return _Card(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        spacing: 14,
        children: [
          InitialsAvatar(name: name, size: 56),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(name, style: textTheme.titleMedium),
                Text(email, style: textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  const _DetailsCard({required this.profile, required this.dailyReference});

  final UserProfile? profile;
  final int? dailyReference;

  static String _measure(double value) =>
      value == value.roundToDouble() ? '${value.round()}' : '$value';

  @override
  Widget build(BuildContext context) {
    final profile = this.profile;
    final rows = profile == null
        ? [('Details', 'Not added yet')]
        : [
            ('Age · Sex', '${profile.age} · ${profile.sex.label}'),
            (
              'Height · Weight',
              '${_measure(profile.heightCm)} cm · '
                  '${_measure(profile.weightKg)} kg',
            ),
            ('Activity', profile.activityLevel.label),
            (
              'Goal',
              profile.goal == WeightGoal.maintain
                  ? 'Maintain weight'
                  : profile.goal.label,
            ),
          ];

    return _Card(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        children: [
          for (final (label, value) in rows) ...[
            _DetailRow(label: label, value: value),
            const Divider(color: AppColors.borderSubtle),
          ],
          _DetailRow(
            label: 'Daily reference',
            value: dailyReference == null
                ? '—'
                : formatApproxKcal(dailyReference!),
            highlight: true,
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
    this.highlight = false,
  });

  final String label;
  final String value;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: highlight ? FontWeight.w800 : FontWeight.w700,
              color: highlight ? AppColors.primaryDark : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _AutoSaveTile extends StatelessWidget {
  const _AutoSaveTile({required this.enabled, required this.onChanged});

  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return _Card(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: MergeSemantics(
        child: Row(
          spacing: 14,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacing.xxs,
                children: [
                  Text(
                    'Save results automatically',
                    style: textTheme.titleSmall,
                  ),
                  Text(
                    enabled
                        ? 'Every analysed meal goes straight into your '
                              'history. You can still edit it later.'
                        : 'You’ll check each result and tap save before it '
                              'goes into your history.',
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Switch.adaptive(
              value: enabled,
              onChanged: onChanged,
              activeTrackColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child, required this.padding});

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: child,
    );
  }
}
