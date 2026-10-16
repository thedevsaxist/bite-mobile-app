import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/theme/app_icons.dart';

/// Logo mark + wordmark from the welcome screen.
class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(AppIcons.logo, color: Colors.white, size: 22),
        ),
        Text(
          AppConstants.appName,
          style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(fontSize: 17),
        ),
      ],
    );
  }
}
