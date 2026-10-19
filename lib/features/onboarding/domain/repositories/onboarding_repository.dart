import 'package:fpdart/fpdart.dart';

import 'package:calorie_estimator/core/utils/typedefs.dart';

abstract interface class OnboardingRepository {
  FutureEither<bool> hasSeenOnboarding();

  FutureEither<Unit> completeOnboarding();
}
