// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NutrientsDto _$NutrientsDtoFromJson(Map<String, dynamic> json) =>
    _NutrientsDto(
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
    );

Map<String, dynamic> _$NutrientsDtoToJson(_NutrientsDto instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'carbohydrates': instance.carbohydrates,
      'fat': instance.fat,
    };

_FoodReferenceDto _$FoodReferenceDtoFromJson(Map<String, dynamic> json) =>
    _FoodReferenceDto(
      id: json['id'] as String,
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$FoodReferenceDtoToJson(_FoodReferenceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
    };

_PortionDto _$PortionDtoFromJson(Map<String, dynamic> json) => _PortionDto(
  description: json['description'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  unit: json['unit'] as String?,
);

Map<String, dynamic> _$PortionDtoToJson(_PortionDto instance) =>
    <String, dynamic>{
      'description': instance.description,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };

_MealItemDto _$MealItemDtoFromJson(Map<String, dynamic> json) => _MealItemDto(
  id: json['id'] as String,
  name: json['name'] as String,
  recognisedItemId: json['recognisedItemId'] as String?,
  nutritionReference: json['nutritionReference'] == null
      ? null
      : FoodReferenceDto.fromJson(
          json['nutritionReference'] as Map<String, dynamic>,
        ),
  portion: json['portion'] == null
      ? const PortionDto()
      : PortionDto.fromJson(json['portion'] as Map<String, dynamic>),
  nutrients: json['nutrients'] == null
      ? null
      : NutrientsDto.fromJson(json['nutrients'] as Map<String, dynamic>),
  wasModified: json['wasModified'] as bool? ?? false,
);

Map<String, dynamic> _$MealItemDtoToJson(_MealItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'recognisedItemId': instance.recognisedItemId,
      'nutritionReference': instance.nutritionReference,
      'portion': instance.portion,
      'nutrients': instance.nutrients,
      'wasModified': instance.wasModified,
    };

_MealDto _$MealDtoFromJson(Map<String, dynamic> json) => _MealDto(
  id: json['id'] as String,
  analysisId: json['analysisId'] as String,
  mealDate: DateTime.parse(json['mealDate'] as String),
  status: json['status'] as String? ?? 'saved',
  validatedByUser: json['validatedByUser'] as bool? ?? false,
  totals: NutrientsDto.fromJson(json['totals'] as Map<String, dynamic>),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => MealItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$MealDtoToJson(_MealDto instance) => <String, dynamic>{
  'id': instance.id,
  'analysisId': instance.analysisId,
  'mealDate': instance.mealDate.toIso8601String(),
  'status': instance.status,
  'validatedByUser': instance.validatedByUser,
  'totals': instance.totals,
  'items': instance.items,
  'imageUrl': instance.imageUrl,
};

_MealResponseDto _$MealResponseDtoFromJson(Map<String, dynamic> json) =>
    _MealResponseDto(
      meal: MealDto.fromJson(json['meal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MealResponseDtoToJson(_MealResponseDto instance) =>
    <String, dynamic>{'meal': instance.meal};

_MealListResponseDto _$MealListResponseDtoFromJson(Map<String, dynamic> json) =>
    _MealListResponseDto(
      meals:
          (json['meals'] as List<dynamic>?)
              ?.map((e) => MealDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MealListResponseDtoToJson(
  _MealListResponseDto instance,
) => <String, dynamic>{'meals': instance.meals};
