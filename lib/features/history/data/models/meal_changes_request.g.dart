// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_changes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealItemInputDto _$MealItemInputDtoFromJson(Map<String, dynamic> json) =>
    _MealItemInputDto(
      recognisedItemId: json['recognisedItemId'] as String?,
      name: json['name'] as String,
      nutritionReferenceId: json['nutritionReferenceId'] as String?,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
      calories: (json['calories'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      carbohydrates: (json['carbohydrates'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MealItemInputDtoToJson(_MealItemInputDto instance) =>
    <String, dynamic>{
      'recognisedItemId': ?instance.recognisedItemId,
      'name': instance.name,
      'nutritionReferenceId': ?instance.nutritionReferenceId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'calories': ?instance.calories,
      'protein': ?instance.protein,
      'carbohydrates': ?instance.carbohydrates,
      'fat': ?instance.fat,
    };

_MealChangesRequest _$MealChangesRequestFromJson(Map<String, dynamic> json) =>
    _MealChangesRequest(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MealItemInputDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealChangesRequestToJson(_MealChangesRequest instance) =>
    <String, dynamic>{
      'items': ?instance.items?.map((e) => e.toJson()).toList(),
    };
