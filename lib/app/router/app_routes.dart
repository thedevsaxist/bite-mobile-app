/// Route paths, one per screen in the design.
abstract final class AppRoutes {
  // Onboarding & auth
  static const welcome = '/welcome';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const createAccount = '/create-account';
  static const profileSetup = '/profile-setup';

  // Main tabs (bottom navigation)
  static const home = '/home';
  static const history = '/history';

  // Scan flow (full screen, above the tabs)
  static const capture = '/scan';
  static const mealDetails = '/scan/details';
  static const analysing = '/scan/analysing';
  static const result = '/scan/result';
  static const analysisError = '/scan/error';

  // Profile & settings
  static const settings = '/settings';
}
