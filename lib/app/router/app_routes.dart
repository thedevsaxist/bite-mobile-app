/// Route paths, one per screen in the design.
abstract final class AppRoutes {
  // Onboarding & auth
  static const welcome = '/welcome';
  static const auth = '/auth';
  static const profileSetup = '/profile-setup';

  // Main tabs
  static const home = '/home';
  static const history = '/history';

  // Scan flow
  static const capture = '/scan';
  static const mealDetails = '/scan/details';
  static const analysing = '/scan/analysing';
  static const result = '/scan/result';
  static const editItem = '/scan/result/edit';
  static const analysisError = '/scan/error';

  // Profile & settings
  static const settings = '/settings';
}
