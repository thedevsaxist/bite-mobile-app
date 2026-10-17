import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/app/shell/main_shell.dart';
import 'package:calorie_estimator/features/auth/presentation/views/create_account_view.dart';
import 'package:calorie_estimator/features/auth/presentation/views/login_view.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/views/analysing_view.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/views/analysis_error_view.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/views/capture_view.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/views/meal_details_view.dart';
import 'package:calorie_estimator/features/food_analysis/presentation/views/result_view.dart';
import 'package:calorie_estimator/features/history/presentation/views/history_view.dart';
import 'package:calorie_estimator/features/home/presentation/views/home_view.dart';
import 'package:calorie_estimator/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:calorie_estimator/features/onboarding/presentation/views/splash_view.dart';
import 'package:calorie_estimator/features/onboarding/presentation/views/welcome_view.dart';
import 'package:calorie_estimator/features/profile/presentation/views/profile_setup_view.dart';
import 'package:calorie_estimator/features/settings/presentation/views/settings_view.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  // TODO: add a redirect once the auth feature exposes session state —
  // signed-in users skip Welcome, signed-out users can't reach the tabs.
  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),

      // Onboarding & auth
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.createAccount,
        builder: (context, state) => const CreateAccountView(),
      ),
      GoRoute(
        path: AppRoutes.profileSetup,
        // `extra: true` opens it for editing from Profile & settings.
        builder: (context, state) =>
            ProfileSetupView(isEditing: state.extra == true),
      ),

      // Main tabs
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.history,
                builder: (context, state) => const HistoryView(),
              ),
            ],
          ),
        ],
      ),

      // Full-screen pages above the tabs
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: AppRoutes.capture,
        builder: (context, state) => const CaptureView(),
      ),
      GoRoute(
        path: AppRoutes.mealDetails,
        builder: (context, state) => const MealDetailsView(),
      ),
      GoRoute(
        path: AppRoutes.analysing,
        builder: (context, state) => const AnalysingView(),
      ),
      GoRoute(
        path: AppRoutes.result,
        builder: (context, state) => const ResultView(),
      ),
      GoRoute(
        path: AppRoutes.analysisError,
        builder: (context, state) => const AnalysisErrorView(),
      ),
    ],
  );
}
