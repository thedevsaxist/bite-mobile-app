import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_spacing.dart';
import 'package:calorie_estimator/core/widgets/app_buttons.dart';
import 'package:calorie_estimator/core/widgets/bite_mark.dart';
import 'package:calorie_estimator/core/widgets/plate_illustration.dart';

/// 01 Welcome.
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.xl,
            AppSpacing.xl,
            AppSpacing.xl,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpacing.xl,
            children: [
              const Align(alignment: Alignment.centerLeft, child: BiteLogo()),
              const Expanded(child: _HeroIllustration()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Snap your meal.\nKnow your calories.',
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    'Take a photo of your food and get an instant calorie '
                    'estimate. Your meals are saved so you can track your day.',
                    style: textTheme.bodyLarge?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppSpacing.sm,
                children: [
                  PrimaryButton(
                    label: 'Get started',
                    onPressed: () => context.push(AppRoutes.onboarding),
                  ),
                  SecondaryButton(
                    label: 'Log in',
                    onPressed: () => context.push(AppRoutes.login),
                  ),
                  Text(
                    'No account needed to start.',
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall,
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

class _HeroIllustration extends StatelessWidget {
  const _HeroIllustration();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest.shortestSide.clamp(160.0, 248.0);
        return Center(
          child: SizedBox(
            width: size + 100,
            height: size + 40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PlateWithBackdrop(size: size),
                const Positioned(
                  top: 34,
                  right: 0,
                  child: _FoodChip(food: 'Jollof rice', kcal: 420),
                ),
                const Positioned(
                  bottom: 40,
                  left: 0,
                  child: _FoodChip(food: 'Plantain', kcal: 230),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _FoodChip extends StatelessWidget {
  const _FoodChip({required this.food, required this.kcal});

  final String food;
  final int kcal;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodySmall
        ?.copyWith(fontWeight: FontWeight.w600, color: AppColors.textPrimary);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadii.sm),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1414201A),
            blurRadius: 18,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Text.rich(
        TextSpan(
          text: '$food · ',
          children: [
            TextSpan(
              text: '$kcal kcal',
              style: const TextStyle(color: AppColors.accentText),
            ),
          ],
        ),
        style: style,
      ),
    );
  }
}
