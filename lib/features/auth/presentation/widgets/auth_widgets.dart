import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/utils/validators.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// Title + subtitle at the top of the auth screens.
class AuthHeader extends StatelessWidget {
  const AuthHeader({required this.title, required this.subtitle, super.key});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.xs,
      children: [
        Text(title, style: textTheme.headlineMedium),
        Text(
          subtitle,
          style: textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }
}

enum SocialProvider { apple, google }

/// "Continue with Apple / Google".
class SocialSignInButton extends StatelessWidget {
  const SocialSignInButton({
    required this.provider,
    required this.onPressed,
    super.key,
  });

  final SocialProvider provider;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isApple = provider == SocialProvider.apple;
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadii.input),
      side: isApple
          ? BorderSide.none
          : const BorderSide(color: AppColors.inputBorder),
    );

    return FilledButton.icon(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        minimumSize: const Size.fromHeight(AppSizes.inputHeight),
        backgroundColor: isApple ? AppColors.textPrimary : AppColors.background,
        foregroundColor: isApple ? Colors.white : AppColors.textPrimary,
        shape: shape,
      ),
      // TODO: Google's sign-in guidelines ask for the full-colour "G" logo;
      // swap in the official asset before release.
      icon: Icon(isApple ? AppIcons.apple : AppIcons.google, size: 20),
      label: Text(isApple ? 'Continue with Apple' : 'Continue with Google'),
    );
  }
}

/// "—— or use email ——".
class OrDivider extends StatelessWidget {
  const OrDivider({this.label = 'or use email', super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: Row(
        spacing: AppSpacing.sm,
        children: [
          const Expanded(child: Divider()),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}

/// Eye icon that toggles password visibility.
class PasswordVisibilityToggle extends StatelessWidget {
  const PasswordVisibilityToggle({
    required this.obscured,
    required this.onPressed,
    super.key,
  });

  final bool obscured;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: obscured ? 'Show password' : 'Hide password',
      color: AppColors.textSecondary,
      icon: Icon(obscured ? AppIcons.show : AppIcons.hide),
    );
  }
}

/// The live checklist under the sign-up password field.
class PasswordRulesChecklist extends StatelessWidget {
  const PasswordRulesChecklist({required this.password, super.key});

  final String password;

  @override
  Widget build(BuildContext context) {
    const rules = PasswordRule.values;

    // Two columns, laid out as rows of pairs (a GridView can't size itself
    // inside the scrollable form).
    return Semantics(
      liveRegion: true,
      child: Padding(
        padding: const EdgeInsets.only(top: AppSpacing.xxs),
        child: Column(
          spacing: AppSpacing.xs,
          children: [
            for (var i = 0; i < rules.length; i += 2)
              Row(
                spacing: AppSpacing.sm,
                children: [
                  for (final rule in rules.skip(i).take(2))
                    Expanded(
                      child: _RuleRow(
                        label: rule.label,
                        met: rule.isMetBy(password),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _RuleRow extends StatelessWidget {
  const _RuleRow({required this.label, required this.met});

  final String label;
  final bool met;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Semantics(
      label: met ? '$label, done' : label,
      excludeSemantics: true,
      child: Row(
        spacing: AppSpacing.xs,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: met ? AppColors.primary : Colors.transparent,
              border: met
                  ? null
                  : Border.all(color: AppColors.inactive, width: 2),
            ),
            child: met
                ? const Icon(AppIcons.check, size: 12, color: Colors.white)
                : null,
          ),
          Flexible(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall?.copyWith(
                fontWeight: met ? FontWeight.w700 : FontWeight.w600,
                color: met ? AppColors.primaryDark : AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
