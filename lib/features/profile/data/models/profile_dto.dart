import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/profile/domain/entities/user_profile.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

/// The profile as the API sends and receives it. Also the `PUT /profile`
/// body, so it holds only the six fields the backend accepts.
@freezed
abstract class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required int age,
    required String sex,
    required double weightKg,
    required double heightCm,
    required String activityLevel,
    required String weightGoal,
  }) = _ProfileDto;
  const ProfileDto._();

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  factory ProfileDto.fromEntity(UserProfile profile) => ProfileDto(
    age: profile.age,
    sex: profile.sex.name,
    weightKg: profile.weightKg,
    heightCm: profile.heightCm,
    activityLevel: _activityLevels[profile.activityLevel]!,
    weightGoal: profile.goal.name,
  );

  UserProfile toEntity() => UserProfile(
    age: age,
    sex: Sex.values.byName(sex),
    heightCm: heightCm,
    weightKg: weightKg,
    activityLevel: _activityLevels.entries
        .firstWhere(
          (entry) => entry.value == activityLevel,
          orElse: () =>
              throw FormatException('Unknown activity level: $activityLevel'),
        )
        .key,
    goal: WeightGoal.values.byName(weightGoal),
  );

  // The app's labels follow the design; the backend's values follow the
  // usual activity-factor names. Matched by multiplier (1.2 … 1.9).
  static const _activityLevels = {
    ActivityLevel.sedentary: 'sedentary',
    ActivityLevel.lightlyActive: 'light',
    ActivityLevel.active: 'moderate',
    ActivityLevel.veryActive: 'active',
    ActivityLevel.extremelyActive: 'very_active',
  };
}

@freezed
abstract class DietaryReferenceDto with _$DietaryReferenceDto {
  const factory DietaryReferenceDto({
    required int dailyCalorieReference,
    required int bmr,
    required int maintenanceCalories,
  }) = _DietaryReferenceDto;

  factory DietaryReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$DietaryReferenceDtoFromJson(json);
}

/// `GET /profile`: `{"profile": {...}}`.
@freezed
abstract class ProfileResponseDto with _$ProfileResponseDto {
  const factory ProfileResponseDto({required ProfileDto profile}) =
      _ProfileResponseDto;

  factory ProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseDtoFromJson(json);
}

/// `GET /profile/dietary-reference`: `{"dietaryReference": {...}}`.
@freezed
abstract class DietaryReferenceResponseDto with _$DietaryReferenceResponseDto {
  const factory DietaryReferenceResponseDto({
    required DietaryReferenceDto dietaryReference,
  }) = _DietaryReferenceResponseDto;

  factory DietaryReferenceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DietaryReferenceResponseDtoFromJson(json);
}

/// `PUT /profile`: the saved profile and the reference calculated from it.
@freezed
abstract class SaveProfileResponseDto with _$SaveProfileResponseDto {
  const factory SaveProfileResponseDto({
    required ProfileDto profile,
    required DietaryReferenceDto dietaryReference,
  }) = _SaveProfileResponseDto;

  factory SaveProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SaveProfileResponseDtoFromJson(json);
}
