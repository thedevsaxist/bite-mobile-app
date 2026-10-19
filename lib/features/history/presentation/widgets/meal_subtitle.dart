import 'package:calorie_estimator/core/utils/formatters.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

/// "Lunch · 1:20 PM", and "· Marked wrong" for a disputed meal, which
/// doesn't count towards the day.
String mealSubtitle(MealRecord meal) => [
  meal.mealType.label,
  formatTime(meal.eatenAt),
  if (meal.isDisputed) 'Marked wrong',
].join(' · ');
