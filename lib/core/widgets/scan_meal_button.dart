import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_colors.dart';
import 'package:uicons/uicons.dart';

/// The round paprika camera button that starts a scan, shown in Android page
/// headers. On iOS the scan button is the glass tab bar's extra button.
class ScanMealButton extends StatelessWidget {
  const ScanMealButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Scan a meal',
      button: true,
      excludeSemantics: true,
      child: Material(
        color: AppColors.accent,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: SizedBox.square(
            dimension: 48,
            child: Icon(
              UIcons.regularRounded.camera,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
