import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calorie_estimator/features/food_analysis/domain/entities/food_analysis.dart';
import 'package:calorie_estimator/features/history/data/models/meal_dto.dart';
import 'package:calorie_estimator/features/history/domain/entities/meal_record.dart';

part 'analysis_dto.freezed.dart';
part 'analysis_dto.g.dart';

@freezed
abstract class AnalysisItemDto with _$AnalysisItemDto {
  const factory AnalysisItemDto({
    required String id,
    required String name,
    FoodReferenceDto? nutritionReference,
    @Default(PortionDto()) PortionDto portion,
    double? confidence,
    NutrientsDto? nutrients,
  }) = _AnalysisItemDto;
  const AnalysisItemDto._();

  factory AnalysisItemDto.fromJson(Map<String, dynamic> json) =>
      _$AnalysisItemDtoFromJson(json);

  MealItem toEntity() => MealItem(
    id: id,
    recognisedItemId: id,
    name: name,
    portionDescription: portion.description,
    quantity: portion.quantity,
    unit: PortionUnitCodec.decode(portion.unit),
    reference: nutritionReference?.toEntity(),
    nutrients: nutrients?.toEntity(),
  );
}

/// The meal saved from an analysis: `{ id, status, validatedByUser }`.
@freezed
abstract class SavedMealDto with _$SavedMealDto {
  const factory SavedMealDto({required String id}) = _SavedMealDto;

  factory SavedMealDto.fromJson(Map<String, dynamic> json) =>
      _$SavedMealDtoFromJson(json);
}

@freezed
abstract class AnalysisDto with _$AnalysisDto {
  const factory AnalysisDto({
    required String id,
    @Default([]) List<AnalysisItemDto> items,
    String? imageUrl,
    SavedMealDto? meal,

    /// `{ reason, disputedAt }` once disputed.
    Map<String, dynamic>? dispute,
    required DateTime createdAt,
  }) = _AnalysisDto;
  const AnalysisDto._();

  factory AnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$AnalysisDtoFromJson(json);

  FoodAnalysis toEntity() => FoodAnalysis(
    id: id,
    items: [for (final item in items) item.toEntity()],
    createdAt: createdAt.toLocal(),
    imageUrl: imageUrl,
    mealId: meal?.id,
    isDisputed: dispute != null,
  );
}

/// `{"analysis": {...}}`.
@freezed
abstract class AnalysisResponseDto with _$AnalysisResponseDto {
  const factory AnalysisResponseDto({required AnalysisDto analysis}) =
      _AnalysisResponseDto;

  factory AnalysisResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AnalysisResponseDtoFromJson(json);
}

/// `POST /analyses/:id/dispute`. The reason is optional.
@freezed
abstract class DisputeRequest with _$DisputeRequest {
  const factory DisputeRequest({
    @JsonKey(includeIfNull: false) String? reason,
  }) = _DisputeRequest;

  factory DisputeRequest.fromJson(Map<String, dynamic> json) =>
      _$DisputeRequestFromJson(json);
}
