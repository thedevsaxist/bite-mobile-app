// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
  age: (json['age'] as num).toInt(),
  sex: json['sex'] as String,
  weightKg: (json['weightKg'] as num).toDouble(),
  heightCm: (json['heightCm'] as num).toDouble(),
  activityLevel: json['activityLevel'] as String,
  weightGoal: json['weightGoal'] as String,
);

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'age': instance.age,
      'sex': instance.sex,
      'weightKg': instance.weightKg,
      'heightCm': instance.heightCm,
      'activityLevel': instance.activityLevel,
      'weightGoal': instance.weightGoal,
    };

_DietaryReferenceDto _$DietaryReferenceDtoFromJson(Map<String, dynamic> json) =>
    _DietaryReferenceDto(
      dailyCalorieReference: (json['dailyCalorieReference'] as num).toInt(),
      bmr: (json['bmr'] as num).toInt(),
      maintenanceCalories: (json['maintenanceCalories'] as num).toInt(),
    );

Map<String, dynamic> _$DietaryReferenceDtoToJson(
  _DietaryReferenceDto instance,
) => <String, dynamic>{
  'dailyCalorieReference': instance.dailyCalorieReference,
  'bmr': instance.bmr,
  'maintenanceCalories': instance.maintenanceCalories,
};

_ProfileResponseDto _$ProfileResponseDtoFromJson(Map<String, dynamic> json) =>
    _ProfileResponseDto(
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseDtoToJson(_ProfileResponseDto instance) =>
    <String, dynamic>{'profile': instance.profile};

_DietaryReferenceResponseDto _$DietaryReferenceResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DietaryReferenceResponseDto(
  dietaryReference: DietaryReferenceDto.fromJson(
    json['dietaryReference'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$DietaryReferenceResponseDtoToJson(
  _DietaryReferenceResponseDto instance,
) => <String, dynamic>{'dietaryReference': instance.dietaryReference};

_SaveProfileResponseDto _$SaveProfileResponseDtoFromJson(
  Map<String, dynamic> json,
) => _SaveProfileResponseDto(
  profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
  dietaryReference: DietaryReferenceDto.fromJson(
    json['dietaryReference'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SaveProfileResponseDtoToJson(
  _SaveProfileResponseDto instance,
) => <String, dynamic>{
  'profile': instance.profile,
  'dietaryReference': instance.dietaryReference,
};
