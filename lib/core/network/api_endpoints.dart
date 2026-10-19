/// Backend paths, relative to [AppConfig.apiBaseUrl].
///
/// Matches the Express API (`/api/v1`).
abstract final class ApiEndpoints {
  // Auth
  static const register = '/auth/register';
  static const login = '/auth/login';
  static const firebase = '/auth/firebase';
  static const logout = '/auth/logout';
  static const refreshToken = '/auth/refresh';

  // User
  static const me = '/users/me';
  static const profile = '/profile';
  static const dietaryReference = '/profile/dietary-reference';
  static const settings = '/settings';

  // Nutritional reference data
  static const foods = '/nutrition/foods';
  static const foodById = '/nutrition/foods/{id}';

  // Food analysis
  static const analyses = '/analyses';
  static const analysisById = '/analyses/{id}';
  static const analysisImage = '/analyses/{id}/image';
  static const validateAnalysis = '/analyses/{id}/validate';
  static const disputeAnalysis = '/analyses/{id}/dispute';

  // Meal records / history
  static const meals = '/meals';
  static const mealById = '/meals/{id}';
  static const dailySummary = '/summary/daily';
  static const summary = '/summary';
}
