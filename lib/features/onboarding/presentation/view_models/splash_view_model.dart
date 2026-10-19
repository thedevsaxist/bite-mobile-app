import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/auth/domain/usecases/restore_session_usecase.dart';
import 'package:calorie_estimator/features/auth/presentation/view_models/auth_session.dart';
import 'package:calorie_estimator/features/onboarding/domain/usecases/has_seen_onboarding_usecase.dart';

part 'splash_view_model.g.dart';

/// Where the app goes once start-up finishes.
enum StartDestination { welcome, login, home }

/// Start-up work behind the splash hand-off.
@riverpod
class SplashViewModel extends _$SplashViewModel {
  @override
  Future<StartDestination> build() async {
    final session = await ref
        .read(restoreSessionUseCaseProvider)
        .call(const NoParams());
    if (session case Right(value: _?)) {
      ref.read(authSessionProvider.notifier).signedIn();
      return StartDestination.home;
    }

    // Signed out: people who have been through onboarding go straight to
    // log in.
    final hasSeenOnboarding = await ref
        .read(hasSeenOnboardingUseCaseProvider)
        .call(const NoParams());
    return hasSeenOnboarding.getOrElse((_) => false)
        ? StartDestination.login
        : StartDestination.welcome;
  }
}
