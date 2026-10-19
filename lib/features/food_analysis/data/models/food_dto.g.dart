// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypicalServingDto _$TypicalServingDtoFromJson(Map<String, dynamic> json) =>
    _TypicalServingDto(
      size: (json['size'] as num).toDouble(),
      label: json['label'] as String,
    );

Map<String, dynamic> _$TypicalServingDtoToJson(_TypicalServingDto instance) =>
    <String, dynamic>{'size': instance.size, 'label': instance.label};

_FoodDto _$FoodDtoFromJson(Map<String, dynamic> json) => _FoodDto(
  id: json['id'] as String,
  key: json['key'] as String,
  name: json['name'] as String,
  servingSize: (json['servingSize'] as num).toDouble(),
  calories: (json['calories'] as num).toDouble(),
  protein: (json['protein'] as num).toDouble(),
  carbohydrates: (json['carbohydrates'] as num).toDouble(),
  fat: (json['fat'] as num).toDouble(),
  typicalServing: TypicalServingDto.fromJson(
    json['typicalServing'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$FoodDtoToJson(_FoodDto instance) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'name': instance.name,
  'servingSize': instance.servingSize,
  'calories': instance.calories,
  'protein': instance.protein,
  'carbohydrates': instance.carbohydrates,
  'fat': instance.fat,
  'typicalServing': instance.typicalServing,
};

_FoodListResponseDto _$FoodListResponseDtoFromJson(Map<String, dynamic> json) =>
    _FoodListResponseDto(
      foods:
          (json['foods'] as List<dynamic>?)
              ?.map((e) => FoodDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FoodListResponseDtoToJson(
  _FoodListResponseDto instance,
) => <String, dynamic>{'foods': instance.foods};

_FoodResponseDto _$FoodResponseDtoFromJson(Map<String, dynamic> json) =>
    _FoodResponseDto(
      food: FoodDto.fromJson(json['food'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FoodResponseDtoToJson(_FoodResponseDto instance) =>
    <String, dynamic>{'food': instance.food};
