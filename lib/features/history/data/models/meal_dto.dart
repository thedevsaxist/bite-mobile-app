import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'meal_dto.freezed.dart';
part 'meal_dto.g.dart';

/// The backend's portion units: `g`, `ml` and `serving`.
abstract final class PortionUnitCodec {
  static const _values = {
    PortionUnit.grams: 'g',
    PortionUnit.millilitres: 'ml',
    PortionUnit.servings: 'serving',
  };

  static String encode(PortionUnit unit) => _values[unit]!;

  static PortionUnit? decode(String? value) => value == null
      ? null
      : _values.entries
            .firstWhere(
              (entry) => entry.value == value,
              orElse: () => throw FormatException('Unknown unit: $value'),
            )
            .key;
}

@freezed
abstract class NutrientsDto with _$NutrientsDto {
  const factory NutrientsDto({
    required double calories,
    required double protein,
    required double carbohydrates,
    required double fat,
  }) = _NutrientsDto;
  const NutrientsDto._();

  factory NutrientsDto.fromJson(Map<String, dynamic> json) =>
      _$NutrientsDtoFromJson(json);

  Nutrients toEntity() => Nutrients(
    calories: calories,
    protein: protein,
    carbohydrates: carbohydrates,
    fat: fat,
  );
}

@freezed
abstract class FoodReferenceDto with _$FoodReferenceDto {
  const factory FoodReferenceDto({
    required String id,
    required String key,
    required String name,
  }) = _FoodReferenceDto;
  const FoodReferenceDto._();

  factory FoodReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$FoodReferenceDtoFromJson(json);

  FoodReference toEntity() => FoodReference(id: id, key: key, name: name);
}

/// Analysis items have a `description`; meal items don't. Unmatched items
/// without a weight estimate have no quantity or unit.
@freezed
abstract class PortionDto with _$PortionDto {
  const factory PortionDto({
    String? description,
    double? quantity,
    String? unit,
  }) = _PortionDto;

  factory PortionDto.fromJson(Map<String, dynamic> json) =>
      _$PortionDtoFromJson(json);
}

@freezed
abstract class MealItemDto with _$MealItemDto {
  const factory MealItemDto({
    required String id,
    required String name,
    String? recognisedItemId,
    FoodReferenceDto? nutritionReference,
    @Default(PortionDto()) PortionDto portion,
    NutrientsDto? nutrients,
    @Default(false) bool wasModified,
  }) = _MealItemDto;
  const MealItemDto._();

  factory MealItemDto.fromJson(Map<String, dynamic> json) =>
      _$MealItemDtoFromJson(json);

  MealItem toEntity() => MealItem(
    id: id,
    recognisedItemId: recognisedItemId,
    name: name,
    quantity: portion.quantity,
    unit: PortionUnitCodec.decode(portion.unit),
    reference: nutritionReference?.toEntity(),
    nutrients: nutrients?.toEntity(),
    wasModified: wasModified,
  );
}

@freezed
abstract class MealDto with _$MealDto {
  const factory MealDto({
    required String id,
    required String analysisId,
    required DateTime mealDate,
    @Default('saved') String status,
    @Default(false) bool validatedByUser,
    required NutrientsDto totals,
    @Default([]) List<MealItemDto> items,
    String? imageUrl,
  }) = _MealDto;
  const MealDto._();

  factory MealDto.fromJson(Map<String, dynamic> json) =>
      _$MealDtoFromJson(json);

  MealRecord toEntity() => MealRecord(
    id: id,
    analysisId: analysisId,
    eatenAt: mealDate.toLocal(),
    status: status == 'disputed' ? MealStatus.disputed : MealStatus.saved,
    validatedByUser: validatedByUser,
    totals: totals.toEntity(),
    items: [for (final item in items) item.toEntity()],
    imageUrl: imageUrl,
  );
}

/// `{"meal": {...}}`.
@freezed
abstract class MealResponseDto with _$MealResponseDto {
  const factory MealResponseDto({required MealDto meal}) = _MealResponseDto;

  factory MealResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MealResponseDtoFromJson(json);
}

/// `GET /meals`: `{"meals": [...], "range": {...}}`.
@freezed
abstract class MealListResponseDto with _$MealListResponseDto {
  const factory MealListResponseDto({@Default([]) List<MealDto> meals}) =
      _MealListResponseDto;

  factory MealListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MealListResponseDtoFromJson(json);
}
