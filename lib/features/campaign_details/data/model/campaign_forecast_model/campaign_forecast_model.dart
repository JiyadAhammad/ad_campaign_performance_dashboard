import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/campaign_forecast_entity.dart';
import '../../../../../core/enums/enums.dart';

part 'campaign_forecast_model.freezed.dart';
part 'campaign_forecast_model.g.dart';

@freezed
abstract class CampaignForecastResponseModel
    with _$CampaignForecastResponseModel {
  const factory CampaignForecastResponseModel({
    @JsonKey(name: 'campaign_id') required String campaignId,

    @JsonKey(name: 'horizon_days') required int horizonDays,

    required String model,

    @JsonKey(name: 'generated_at') required String generatedAt,

    required List<CampaignForecastModel> forecast,

    required ForecastRecommendationModel recommendation,
  }) = _CampaignForecastResponseModel;

  factory CampaignForecastResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignForecastResponseModelFromJson(json);
}

@freezed
abstract class CampaignForecastModel with _$CampaignForecastModel {
  const factory CampaignForecastModel({
    required String date,

    @JsonKey(name: 'predicted_ctr') required double predictedCtr,

    @JsonKey(name: 'lower_bound') required double lowerBound,

    @JsonKey(name: 'upper_bound') required double upperBound,
  }) = _CampaignForecastModel;

  factory CampaignForecastModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignForecastModelFromJson(json);
}

@freezed
abstract class ForecastRecommendationModel with _$ForecastRecommendationModel {
  const factory ForecastRecommendationModel({
    @JsonKey(unknownEnumValue: ForecastTrend.unknown) required ForecastTrend trend,

    @JsonKey(name: 'change_percent') required double changePercent,

    required String message,

    @JsonKey(name: 'suggested_daily_budget') required int suggestedDailyBudget,
  }) = _ForecastRecommendationModel;

  factory ForecastRecommendationModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastRecommendationModelFromJson(json);
}

extension CampaignForecastResponseModelMapper on CampaignForecastResponseModel {
  CampaignForecastResponseEntity toEntity() {
    return CampaignForecastResponseEntity(
      campaignId: campaignId,
      horizonDays: horizonDays,
      model: model,
      generatedAt: generatedAt,
      forecast: forecast
          .map((CampaignForecastModel model) => model.toEntity())
          .toList(),
      recommendation: recommendation.toEntity(),
    );
  }
}

extension CampaignForecastModelMapper on CampaignForecastModel {
  CampaignForecastEntity toEntity() {
    return CampaignForecastEntity(
      date: date,
      predictedCtr: predictedCtr,
      lowerBound: lowerBound,
      upperBound: upperBound,
    );
  }
}

extension ForecastRecommendationModelMapper on ForecastRecommendationModel {
  ForecastRecommendationEntity toEntity() {
    return ForecastRecommendationEntity(
      trend: trend,
      changePercent: changePercent,
      message: message,
      suggestedDailyBudget: suggestedDailyBudget,
    );
  }
}
