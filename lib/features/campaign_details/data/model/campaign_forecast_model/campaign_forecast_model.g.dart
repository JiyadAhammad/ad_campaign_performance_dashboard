// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignForecastResponseModel _$CampaignForecastResponseModelFromJson(
  Map<String, dynamic> json,
) => _CampaignForecastResponseModel(
  campaignId: json['campaign_id'] as String,
  horizonDays: (json['horizon_days'] as num).toInt(),
  model: json['model'] as String,
  generatedAt: json['generated_at'] as String,
  forecast: (json['forecast'] as List<dynamic>)
      .map((e) => CampaignForecastModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendation: ForecastRecommendationModel.fromJson(
    json['recommendation'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CampaignForecastResponseModelToJson(
  _CampaignForecastResponseModel instance,
) => <String, dynamic>{
  'campaign_id': instance.campaignId,
  'horizon_days': instance.horizonDays,
  'model': instance.model,
  'generated_at': instance.generatedAt,
  'forecast': instance.forecast,
  'recommendation': instance.recommendation,
};

_CampaignForecastModel _$CampaignForecastModelFromJson(
  Map<String, dynamic> json,
) => _CampaignForecastModel(
  date: json['date'] as String,
  predictedCtr: (json['predicted_ctr'] as num).toDouble(),
  lowerBound: (json['lower_bound'] as num).toDouble(),
  upperBound: (json['upper_bound'] as num).toDouble(),
);

Map<String, dynamic> _$CampaignForecastModelToJson(
  _CampaignForecastModel instance,
) => <String, dynamic>{
  'date': instance.date,
  'predicted_ctr': instance.predictedCtr,
  'lower_bound': instance.lowerBound,
  'upper_bound': instance.upperBound,
};

_ForecastRecommendationModel _$ForecastRecommendationModelFromJson(
  Map<String, dynamic> json,
) => _ForecastRecommendationModel(
  trend: json['trend'] as String,
  changePercent: (json['change_percent'] as num).toDouble(),
  message: json['message'] as String,
  suggestedDailyBudget: (json['suggested_daily_budget'] as num).toInt(),
);

Map<String, dynamic> _$ForecastRecommendationModelToJson(
  _ForecastRecommendationModel instance,
) => <String, dynamic>{
  'trend': instance.trend,
  'change_percent': instance.changePercent,
  'message': instance.message,
  'suggested_daily_budget': instance.suggestedDailyBudget,
};
