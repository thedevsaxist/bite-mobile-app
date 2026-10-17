import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/app_icon_button.dart';
import 'package:calorie_estimator/features/onboarding/presentation/view_models/onboarding_view_model.dart';
import 'package:calorie_estimator/features/onboarding/presentation/widgets/onboarding_pages.dart';

/// 01b Onboarding — three swipeable pages.
class OnboardingView extends ConsumerStatefulWidget {
  const OnboardingView({super.key});

  @override
  ConsumerState<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends ConsumerState<OnboardingView> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _next() => _pageController.nextPage(
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOutCubic,
  );

  Future<void> _finish(String route) async {
    await ref.read(onboardingViewModelProvider.notifier).complete();
    if (mounted) context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final page = ref.watch(onboardingViewModelProvider);
    final isLastPage = page == OnboardingViewModel.pageCount - 1;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.xs,
            AppSpacing.xl,
            AppSpacing.xl,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpacing.xl,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppIconButton.back(semanticLabel: 'Back to welcome'),
                  TextButton(
                    onPressed: () => _finish(AppRoutes.profileSetup),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.textSecondary,
                    ),
                    child: const Text('Skip'),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: ref
                      .read(onboardingViewModelProvider.notifier)
                      .setPage,
                  children: const [
                    WhatItDoesPage(),
                    HowItWorksPage(),
                    WhyItHelpsPage(),
                  ],
                ),
              ),
              _PageDots(count: OnboardingViewModel.pageCount, current: page),
              if (isLastPage)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppSpacing.xxs,
                  children: [
                    PrimaryButton(
                      label: 'Continue to ${AppConstants.appName}',
                      onPressed: () => _finish(AppRoutes.profileSetup),
                    ),
                    TertiaryButton(
                      label: 'Create an account or log in',
                      onPressed: () => _finish(AppRoutes.createAccount),
                    ),
                  ],
                )
              else
                PrimaryButton(label: 'Next', onPressed: _next),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageDots extends StatelessWidget {
  const _PageDots({required this.count, required this.current});

  final int count;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Step ${current + 1} of $count',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 6,
        children: [
          for (var i = 0; i < count; i++)
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: i == current ? 24 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: i == current ? AppColors.accent : AppColors.inputBorder,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
        ],
      ),
    );
  }
}
