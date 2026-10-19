import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/core/utils/typedefs.dart';
import 'package:calorie_estimator/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:calorie_estimator/features/onboarding/domain/repositories/onboarding_repository.dart';

part 'complete_onboarding_usecase.g.dart';

class CompleteOnboardingUseCase implements UseCase<Unit, NoParams> {
  const CompleteOnboardingUseCase(this._repository);

  final OnboardingRepository _repository;

  @override
  FutureEither<Unit> call(NoParams params) => _repository.completeOnboarding();
}

@riverpod
CompleteOnboardingUseCase completeOnboardingUseCase(Ref ref) =>
    CompleteOnboardingUseCase(ref.watch(onboardingRepositoryProvider));
