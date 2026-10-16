import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:calorie_estimator/core/utils/formatters.dart';

/// Light green circle with the user's initials.
class InitialsAvatar extends StatelessWidget {
  const InitialsAvatar({required this.name, this.size = 44, super.key});

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primaryContainer,
        shape: BoxShape.circle,
      ),
      child: Text(
        initialsOf(name),
        style: Theme.of(context).textTheme.titleMedium
            ?.copyWith(fontSize: size * 0.34, color: AppColors.primaryDark),
      ),
    );
  }
}
