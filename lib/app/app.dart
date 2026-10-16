import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:calorie_estimator/app/router/app_router.dart';
import 'package:calorie_estimator/core/constants/app_constants.dart';
import 'package:calorie_estimator/core/theme/app_theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: AppConstants.appName,
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      routerConfig: ref.watch(appRouterProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
