/// Backend paths, relative to [AppConfig.apiBaseUrl].
///
/// Provisional: these follow the entities in the project report and will be
/// confirmed when the backend is built.
abstract final class ApiEndpoints {
  // Auth
  static const register = '/auth/register';
  static const login = '/auth/login';
  static const logout = '/auth/logout';
  static const refreshToken = '/auth/refresh';

  // User
  static const me = '/users/me';
  static const profile = '/users/me/profile';
  static const settings = '/users/me/settings';
  static const dietaryReference = '/users/me/dietary-reference';

  // Food analysis
  static const analyses = '/analyses';
  static const analysisById = '/analyses/{id}';
  static const disputeAnalysis = '/analyses/{id}/dispute';

  // Meal records / history
  static const meals = '/meals';
  static const mealById = '/meals/{id}';
  static const dailySummary = '/meals/summary';
}
