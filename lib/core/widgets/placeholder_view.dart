import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_spacing.dart';

/// Stand-in for routes whose screens haven't been built yet.
class PlaceholderView extends StatelessWidget {
  const PlaceholderView({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSpacing.screenPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppSpacing.xs,
              children: [
                Text(title, style: textTheme.headlineSmall),
                Text('Not built yet', style: textTheme.bodySmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
