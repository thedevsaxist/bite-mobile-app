import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/core/widgets/placeholder_view.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  // TODO: add an auth redirect once the auth feature exposes session state.
  return GoRouter(
    initialLocation: AppRoutes.welcome,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const PlaceholderView(title: 'Welcome'),
      ),
    ],
  );
}
