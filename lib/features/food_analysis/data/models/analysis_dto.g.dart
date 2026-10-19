// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisItemDto _$AnalysisItemDtoFromJson(Map<String, dynamic> json) =>
    _AnalysisItemDto(
      id: json['id'] as String,
      name: json['name'] as String,
      nutritionReference: json['nutritionReference'] == null
          ? null
          : FoodReferenceDto.fromJson(
              json['nutritionReference'] as Map<String, dynamic>,
            ),
      portion: json['portion'] == null
          ? const PortionDto()
          : PortionDto.fromJson(json['portion'] as Map<String, dynamic>),
      confidence: (json['confidence'] as num?)?.toDouble(),
      nutrients: json['nutrients'] == null
          ? null
          : NutrientsDto.fromJson(json['nutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalysisItemDtoToJson(_AnalysisItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nutritionReference': instance.nutritionReference,
      'portion': instance.portion,
      'confidence': instance.confidence,
      'nutrients': instance.nutrients,
    };

_SavedMealDto _$SavedMealDtoFromJson(Map<String, dynamic> json) =>
    _SavedMealDto(id: json['id'] as String);

Map<String, dynamic> _$SavedMealDtoToJson(_SavedMealDto instance) =>
    <String, dynamic>{'id': instance.id};

_AnalysisDto _$AnalysisDtoFromJson(Map<String, dynamic> json) => _AnalysisDto(
  id: json['id'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => AnalysisItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  imageUrl: json['imageUrl'] as String?,
  meal: json['meal'] == null
      ? null
      : SavedMealDto.fromJson(json['meal'] as Map<String, dynamic>),
  dispute: json['dispute'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$AnalysisDtoToJson(_AnalysisDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'imageUrl': instance.imageUrl,
      'meal': instance.meal,
      'dispute': instance.dispute,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_AnalysisResponseDto _$AnalysisResponseDtoFromJson(Map<String, dynamic> json) =>
    _AnalysisResponseDto(
      analysis: AnalysisDto.fromJson(json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalysisResponseDtoToJson(
  _AnalysisResponseDto instance,
) => <String, dynamic>{'analysis': instance.analysis};

_DisputeRequest _$DisputeRequestFromJson(Map<String, dynamic> json) =>
    _DisputeRequest(reason: json['reason'] as String?);

Map<String, dynamic> _$DisputeRequestToJson(_DisputeRequest instance) =>
    <String, dynamic>{'reason': ?instance.reason};
