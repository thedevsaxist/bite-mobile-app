import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/nutrition_food.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'food_dto.freezed.dart';
part 'food_dto.g.dart';

@freezed
abstract class TypicalServingDto with _$TypicalServingDto {
  const factory TypicalServingDto({
    required double size,
    required String label,
  }) = _TypicalServingDto;

  factory TypicalServingDto.fromJson(Map<String, dynamic> json) =>
      _$TypicalServingDtoFromJson(json);
}

/// A reference food from `/nutrition/foods`, values per [servingSize] g.
@freezed
abstract class FoodDto with _$FoodDto {
  const factory FoodDto({
    required String id,
    required String key,
    required String name,
    required double servingSize,
    required double calories,
    required double protein,
    required double carbohydrates,
    required double fat,
    required TypicalServingDto typicalServing,
  }) = _FoodDto;
  const FoodDto._();

  factory FoodDto.fromJson(Map<String, dynamic> json) =>
      _$FoodDtoFromJson(json);

  NutritionFood toEntity() => NutritionFood(
    id: id,
    key: key,
    name: name,
    servingSize: servingSize,
    perServingSize: Nutrients(
      calories: calories,
      protein: protein,
      carbohydrates: carbohydrates,
      fat: fat,
    ),
    typicalServingSize: typicalServing.size,
    typicalServingLabel: typicalServing.label,
  );
}

@freezed
abstract class FoodListResponseDto with _$FoodListResponseDto {
  const factory FoodListResponseDto({@Default([]) List<FoodDto> foods}) =
      _FoodListResponseDto;

  factory FoodListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FoodListResponseDtoFromJson(json);
}

@freezed
abstract class FoodResponseDto with _$FoodResponseDto {
  const factory FoodResponseDto({required FoodDto food}) = _FoodResponseDto;

  factory FoodResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FoodResponseDtoFromJson(json);
}
