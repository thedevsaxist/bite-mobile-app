// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DaySummaryDto _$DaySummaryDtoFromJson(Map<String, dynamic> json) =>
    _DaySummaryDto(
      date: json['date'] as String,
      totals: NutrientsDto.fromJson(json['totals'] as Map<String, dynamic>),
      mealCount: (json['mealCount'] as num).toInt(),
      dailyCalorieReference: (json['dailyCalorieReference'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DaySummaryDtoToJson(_DaySummaryDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'totals': instance.totals,
      'mealCount': instance.mealCount,
      'dailyCalorieReference': instance.dailyCalorieReference,
    };

_DailySummaryResponseDto _$DailySummaryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DailySummaryResponseDto(
  summary: DaySummaryDto.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DailySummaryResponseDtoToJson(
  _DailySummaryResponseDto instance,
) => <String, dynamic>{'summary': instance.summary};

_RangeSummaryDto _$RangeSummaryDtoFromJson(Map<String, dynamic> json) =>
    _RangeSummaryDto(
      days: (json['days'] as List<dynamic>)
          .map((e) => DaySummaryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totals: NutrientsDto.fromJson(json['totals'] as Map<String, dynamic>),
      loggedDays: (json['loggedDays'] as num).toInt(),
      averagePerLoggedDay: NutrientsDto.fromJson(
        json['averagePerLoggedDay'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$RangeSummaryDtoToJson(_RangeSummaryDto instance) =>
    <String, dynamic>{
      'days': instance.days,
      'totals': instance.totals,
      'loggedDays': instance.loggedDays,
      'averagePerLoggedDay': instance.averagePerLoggedDay,
    };

_RangeSummaryResponseDto _$RangeSummaryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _RangeSummaryResponseDto(
  summary: RangeSummaryDto.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RangeSummaryResponseDtoToJson(
  _RangeSummaryResponseDto instance,
) => <String, dynamic>{'summary': instance.summary};
