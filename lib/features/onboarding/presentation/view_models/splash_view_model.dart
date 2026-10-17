import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_view_model.g.dart';

/// Where the app goes once start-up finishes.
enum StartDestination { welcome, home }

/// Start-up work behind the splash hand-off.
@riverpod
class SplashViewModel extends _$SplashViewModel {
  @override
  Future<StartDestination> build() async {
    // TODO: restore the session (auth repository) and check whether
    // onboarding was seen; signed-in users go straight to home.
    return StartDestination.welcome;
  }
}
