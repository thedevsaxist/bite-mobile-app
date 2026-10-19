import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/app/router/app_routes.dart';
import 'package:calorie_estimator/app/shell/main_shell.dart';
import 'package:calorie_estimator/core/utils/platform.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/auth_session.dart';
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

/// Reachable without signing in. Splash sends signed-in users on to Home.
const _publicRoutes = {
  AppRoutes.splash,
  AppRoutes.welcome,
  AppRoutes.onboarding,
  AppRoutes.login,
  AppRoutes.createAccount,
};

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  // Re-runs the redirect when someone signs in or out.
  final isSignedIn = ValueNotifier(ref.read(authSessionProvider));
  ref
    ..listen(authSessionProvider, (_, next) => isSignedIn.value = next)
    ..onDispose(isSignedIn.dispose);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: isSignedIn,
    // Signed-out users (after log out, or when the session ends) go back to
    // Welcome from anywhere past sign-in.
    redirect: (context, state) =>
        isSignedIn.value || _publicRoutes.contains(state.matchedLocation)
        ? null
        : AppRoutes.welcome,
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
        pageBuilder: (context, state) =>
            _modalPage(context, state, const CaptureView()),
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

/// A full-screen page that slides up from the bottom of the screen.
///
/// iOS uses the native full-screen modal transition; Android, whose default
/// is a zoom, gets a matching slide.
Page<void> _modalPage(BuildContext context, GoRouterState state, Widget child) {
  if (isCupertinoPlatform(context)) {
    return MaterialPage(
      key: state.pageKey,
      fullscreenDialog: true,
      child: child,
    );
  }

  return CustomTransitionPage(
    key: state.pageKey,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 400),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
          position: CurvedAnimation(
            parent: animation,
            curve: Curves.fastEaseInToSlowEaseOut,
            reverseCurve: Curves.fastEaseInToSlowEaseOut.flipped,
          ).drive(Tween(begin: const Offset(0, 1), end: Offset.zero)),
          child: child,
        ),
  );
}
