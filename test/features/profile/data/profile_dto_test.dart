import 'package:flutter_test/flutter_test.dart';

import 'package:calorie_estimator/features/profile/data/models/profile_dto.dart';
import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

void main() {
  const profile = UserProfile(
    age: 30,
    sex: Sex.male,
    heightCm: 180,
    weightKg: 80,
    activityLevel: ActivityLevel.active,
    goal: WeightGoal.maintain,
  );

  test('sends exactly the fields PUT /profile accepts', () {
    expect(ProfileDto.fromEntity(profile).toJson(), {
      'age': 30,
      'sex': 'male',
      'weightKg': 80.0,
      'heightCm': 180.0,
      'activityLevel': 'moderate',
      'weightGoal': 'maintain',
    });
  });

  test('reads the backend profile, ignoring extra fields', () {
    final dto = ProfileDto.fromJson({
      'age': 30,
      'sex': 'male',
      'weightKg': 80,
      'heightCm': 180,
      'activityLevel': 'moderate',
      'weightGoal': 'maintain',
      'updatedAt': '2026-10-19T10:00:00.000Z',
    });

    expect(dto.toEntity(), profile);
  });

  test('every activity level round-trips', () {
    for (final level in ActivityLevel.values) {
      final withLevel = profile.copyWith(activityLevel: level);
      expect(ProfileDto.fromEntity(withLevel).toEntity(), withLevel);
    }
  });

  group('estimatedDailyCalories matches the backend formula', () {
    test('maintenance for a moderately active man', () {
      // Backend: BMR 1780 × 1.55 = 2759 kcal.
      expect(profile.estimatedDailyCalories, 2760);
    });

    test('never below maintenance when that is under the minimum', () {
      // Backend: BMR 926.5 × 1.2 = 1112 maintenance; losing would give 612,
      // and the 1200 kcal minimum is above maintenance, so 1112.
      const small = UserProfile(
        age: 60,
        sex: Sex.female,
        heightCm: 150,
        weightKg: 45,
        activityLevel: ActivityLevel.sedentary,
        goal: WeightGoal.lose,
      );
      expect(small.estimatedDailyCalories, 1110);
    });
  });
}
