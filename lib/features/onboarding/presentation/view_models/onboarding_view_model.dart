import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_view_model.g.dart';

/// Tracks the current onboarding page (0-based).
@riverpod
class OnboardingViewModel extends _$OnboardingViewModel {
  static const pageCount = 3;

  @override
  int build() => 0;

  void setPage(int page) => state = page.clamp(0, pageCount - 1);

  /// Called when the user leaves onboarding (Skip, or the last page's CTA).
  Future<void> complete() async {
    // TODO: persist via PreferencesService.setHasSeenWelcome() so returning
    // users skip onboarding.
  }
}
