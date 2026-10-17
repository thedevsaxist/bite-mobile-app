import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/app_snack_bar.dart';
import 'package:calorie_estimator/core/widgets/fill_scroll_view.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/login_view_model.dart';
import 'package:calorie_estimator/features/auth/presentation/widgets/auth_widgets.dart';

/// 01a Log in (returning users).
class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginViewModelProvider);
    final viewModel = ref.read(loginViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;

    ref.listen(loginViewModelProvider.select((s) => s.errorMessage), (
      _,
      message,
    ) {
      if (message != null) showAppSnackBar(context, message);
    });

    Future<void> signIn(Future<bool> Function() action) async {
      final success = await action();
      if (success && context.mounted) context.go(AppRoutes.home);
    }

    return Scaffold(
      body: SafeArea(
        child: FillScrollView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.xs,
            AppSpacing.xl,
            AppSpacing.xl,
          ),
          child: AutofillGroup(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacing.xl,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: AppIconButton.back(),
                ),
                const AuthHeader(
                  title: 'Welcome back',
                  subtitle: 'Log in to get your meals and history back.',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppSpacing.sm,
                  children: [
                    SocialSignInButton(
                      provider: SocialProvider.apple,
                      onPressed: () => signIn(viewModel.continueWithApple),
                    ),
                    SocialSignInButton(
                      provider: SocialProvider.google,
                      onPressed: () => signIn(viewModel.continueWithGoogle),
                    ),
                  ],
                ),
                const OrDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppSpacing.md,
                  children: [
                    LabeledTextField(
                      label: 'Email',
                      hint: 'you@example.com',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.email],
                      onChanged: viewModel.setEmail,
                    ),
                    LabeledTextField(
                      label: 'Password',
                      hint: 'Your password',
                      obscureText: state.obscurePassword,
                      textInputAction: TextInputAction.done,
                      autofillHints: const [AutofillHints.password],
                      onChanged: viewModel.setPassword,
                      suffixIcon: PasswordVisibilityToggle(
                        obscured: state.obscurePassword,
                        onPressed: viewModel.togglePasswordVisibility,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: viewModel.forgotPassword,
                        child: const Text('Forgot password?'),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppSpacing.xs,
                  children: [
                    PrimaryButton(
                      label: 'Log in',
                      loadingLabel: 'Logging in',
                      isLoading: state.isSubmitting,
                      onPressed: () {
                        TextInput.finishAutofillContext();
                        signIn(viewModel.logIn);
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to ${AppConstants.appName}?',
                          style: textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        TextButton(
                          onPressed: () =>
                              context.pushReplacement(AppRoutes.onboarding),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          child: const Text('Get started'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
