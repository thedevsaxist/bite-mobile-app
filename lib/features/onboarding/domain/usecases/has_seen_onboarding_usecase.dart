import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:calorie_estimator/features/onboarding/domain/repositories/onboarding_repository.dart';

part 'has_seen_onboarding_usecase.g.dart';

/// Returning users skip the welcome screen and onboarding.
class HasSeenOnboardingUseCase implements UseCase<bool, NoParams> {
  const HasSeenOnboardingUseCase(this._repository);

  final OnboardingRepository _repository;

  @override
  FutureEither<bool> call(NoParams params) => _repository.hasSeenOnboarding();
}

@riverpod
HasSeenOnboardingUseCase hasSeenOnboardingUseCase(Ref ref) =>
    HasSeenOnboardingUseCase(ref.watch(onboardingRepositoryProvider));
