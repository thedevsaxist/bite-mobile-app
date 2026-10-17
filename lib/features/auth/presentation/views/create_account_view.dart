import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/core/widgets/app_segmented_control.dart';
import 'package:calorie_estimator/core/widgets/app_snack_bar.dart';
import 'package:calorie_estimator/core/widgets/fill_scroll_view.dart';
import 'package:calorie_estimator/core/widgets/labeled_text_field.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/create_account_view_model.dart';
import 'package:calorie_estimator/features/auth/presentation/widgets/auth_widgets.dart';

/// 02 Create account (optional), with a Sign up / Log in toggle.
class CreateAccountView extends ConsumerWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAccountViewModelProvider);
    final viewModel = ref.read(createAccountViewModelProvider.notifier);
    final textTheme = Theme.of(context).textTheme;
    final isSignUp = state.mode == AuthMode.signUp;

    ref.listen(createAccountViewModelProvider.select((s) => s.errorMessage), (
      _,
      message,
    ) {
      if (message != null) showAppSnackBar(context, message);
    });

    Future<void> submit() async {
      TextInput.finishAutofillContext();
      final success = await viewModel.submit();
      if (!success || !context.mounted) return;
      context.go(isSignUp ? AppRoutes.profileSetup : AppRoutes.home);
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
              spacing: 28,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: AppIconButton.back(),
                ),
                AuthHeader(
                  title: isSignUp ? 'Create your account' : 'Welcome back',
                  subtitle: isSignUp
                      ? 'It takes less than a minute.'
                      : 'Log in to see your meals and history.',
                ),
                AppSegmentedControl(
                  segments: const {
                    AuthMode.signUp: 'Sign up',
                    AuthMode.logIn: 'Log in',
                  },
                  selected: state.mode,
                  onChanged: viewModel.setMode,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppSpacing.md,
                  children: [
                    if (isSignUp)
                      LabeledTextField(
                        label: 'Full name',
                        hint: 'Your name',
                        textInputAction: TextInputAction.next,
                        autofillHints: const [AutofillHints.name],
                        onChanged: viewModel.setFullName,
                      ),
                    LabeledTextField(
                      label: 'Email',
                      hint: 'you@example.com',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.email],
                      onChanged: viewModel.setEmail,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: AppSpacing.xxs,
                      children: [
                        LabeledTextField(
                          label: 'Password',
                          hint: 'Enter your password',
                          obscureText: state.obscurePassword,
                          textInputAction: TextInputAction.done,
                          autofillHints: [
                            isSignUp
                                ? AutofillHints.newPassword
                                : AutofillHints.password,
                          ],
                          onChanged: viewModel.setPassword,
                          suffixIcon: PasswordVisibilityToggle(
                            obscured: state.obscurePassword,
                            onPressed: viewModel.togglePasswordVisibility,
                          ),
                        ),
                        if (isSignUp)
                          PasswordRulesChecklist(password: state.password),
                      ],
                    ),
                    if (!isSignUp)
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
                  spacing: 14,
                  children: [
                    PrimaryButton(
                      label: isSignUp ? 'Continue' : 'Log in',
                      loadingLabel: isSignUp
                          ? 'Creating your account'
                          : 'Logging in',
                      isLoading: state.isSubmitting,
                      onPressed: submit,
                    ),
                    Text(
                      'Your meal photos and records are private to your '
                      'account.',
                      textAlign: TextAlign.center,
                      style: textTheme.bodySmall,
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
