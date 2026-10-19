import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:calorie_estimator/core/usecase/usecase.dart';
import 'package:calorie_estimator/features/onboarding/domain/usecases/complete_onboarding_usecase.dart';

part 'onboarding_view_model.g.dart';

/// Tracks the current onboarding page (0-based).
@riverpod
class OnboardingViewModel extends _$OnboardingViewModel {
  static const pageCount = 3;

  @override
  int build() => 0;

  void setPage(int page) => state = page.clamp(0, pageCount - 1);

  /// Called when the user leaves onboarding (Skip, or the last page's CTAs),
  /// so returning users skip it next time. Failing to remember isn't worth
  /// stopping them for.
  Future<void> complete() =>
      ref.read(completeOnboardingUseCaseProvider).call(const NoParams());
}
