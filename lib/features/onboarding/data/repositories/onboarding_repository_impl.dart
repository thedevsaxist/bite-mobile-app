import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/error/error_handler.dart';
import 'package:calorie_estimator/core/storage/preferences_service.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/onboarding/domain/repositories/onboarding_repository.dart';

part 'onboarding_repository_impl.g.dart';

@riverpod
OnboardingRepository onboardingRepository(Ref ref) =>
    OnboardingRepositoryImpl(ref.watch(preferencesServiceProvider));

class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl(this._preferences);

  final PreferencesService _preferences;

  @override
  FutureEither<bool> hasSeenOnboarding() =>
      guard(() async => _preferences.hasSeenWelcome);

  @override
  FutureEither<Unit> completeOnboarding() => guard(() async {
    await _preferences.setHasSeenWelcome();
    return unit;
  });
}
