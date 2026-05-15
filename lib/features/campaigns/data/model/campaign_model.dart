import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/campaign_entity.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

double _doubleFromJson(dynamic value) {
  return (value as num).toDouble();
}

@freezed
abstract class CampaignResponseModel with _$CampaignResponseModel {
  const factory CampaignResponseModel({
    required List<CampaignModel> campaigns,
    required int total,
  }) = _CampaignResponseModel;

  factory CampaignResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignResponseModelFromJson(json);
}

@freezed
abstract class CampaignModel with _$CampaignModel {
  const factory CampaignModel({
    required String id,
    required String name,
    required String status,
    required String objective,
    required String channel,
    required int budget,
    required int spend,
    required int impressions,
    required int clicks,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String currency,
    required String thumbnail,
    required double ctr,
    @JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson)
    required double budgetUtilization,
  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignModelFromJson(json);
}

extension CampaignModelMapper on CampaignModel {
  CampaignEntity toEntity() {
    return CampaignEntity(
      id: id,
      name: name,
      status: status,
      objective: objective,
      channel: channel,
      budget: budget,
      spend: spend,
      impressions: impressions,
      clicks: clicks,
      startDate: startDate,
      endDate: endDate,
      currency: currency,
      thumbnail: thumbnail,
      ctr: ctr,
      budgetUtilization: budgetUtilization,
    );
  }
}
