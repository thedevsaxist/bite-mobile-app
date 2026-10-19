import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'meal_changes_request.freezed.dart';
part 'meal_changes_request.g.dart';

// The backend rejects unknown keys and explicit nulls, so every optional
// field is left out when empty.

/// One item as the user wants it saved. With a reference food the backend
/// calculates the nutrients, so none are sent.
@freezed
abstract class MealItemInputDto with _$MealItemInputDto {
  const factory MealItemInputDto({
    @JsonKey(includeIfNull: false) String? recognisedItemId,
    required String name,
    @JsonKey(includeIfNull: false) String? nutritionReferenceId,
    required double quantity,
    required String unit,
    @JsonKey(includeIfNull: false) double? calories,
    @JsonKey(includeIfNull: false) double? protein,
    @JsonKey(includeIfNull: false) double? carbohydrates,
    @JsonKey(includeIfNull: false) double? fat,
  }) = _MealItemInputDto;

  factory MealItemInputDto.fromJson(Map<String, dynamic> json) =>
      _$MealItemInputDtoFromJson(json);

  /// Throws [ArgumentError] for an item without a portion: the backend
  /// needs one, so callers check [MealItem.hasPortion] first.
  factory MealItemInputDto.fromEntity(MealItem item) {
    if (!item.hasPortion) {
      throw ArgumentError.value(item.name, 'item', 'has no portion');
    }
    final reference = item.reference;
    // Without reference data, the item's own calories (if any) are kept.
    final nutrients = reference == null ? item.nutrients : null;
    return MealItemInputDto(
      recognisedItemId: item.recognisedItemId,
      name: item.name,
      nutritionReferenceId: reference?.id,
      quantity: item.quantity!,
      unit: PortionUnitCodec.encode(item.unit!),
      calories: nutrients?.calories,
      protein: nutrients?.protein,
      carbohydrates: nutrients?.carbohydrates,
      fat: nutrients?.fat,
    );
  }
}

/// `POST /analyses/:id/validate` and `PATCH /meals/:id`. Leaving out
/// [items] keeps (or accepts) them as they are.
@freezed
abstract class MealChangesRequest with _$MealChangesRequest {
  @JsonSerializable(explicitToJson: true)
  const factory MealChangesRequest({
    @JsonKey(includeIfNull: false) List<MealItemInputDto>? items,
  }) = _MealChangesRequest;

  factory MealChangesRequest.fromJson(Map<String, dynamic> json) =>
      _$MealChangesRequestFromJson(json);

  factory MealChangesRequest.withItems(List<MealItem> items) =>
      MealChangesRequest(
        items: [for (final item in items) MealItemInputDto.fromEntity(item)],
      );
}
