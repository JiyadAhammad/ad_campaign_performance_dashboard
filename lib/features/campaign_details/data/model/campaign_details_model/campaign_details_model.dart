import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/enums.dart';
import '../../../domain/entity/campaign_details_entity.dart';

part 'campaign_details_model.freezed.dart';
part 'campaign_details_model.g.dart';

///
/// RESPONSE MODEL
///
@freezed
abstract class CampaignDetailResponseModel with _$CampaignDetailResponseModel {
  const factory CampaignDetailResponseModel({
    required CampaignDetailModel campaign,
  }) = _CampaignDetailResponseModel;

  factory CampaignDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailResponseModelFromJson(json);
}

///
/// CAMPAIGN DETAIL MODEL
///
@freezed
abstract class CampaignDetailModel with _$CampaignDetailModel {
  const factory CampaignDetailModel({
    required String id,
    required String name,
    @JsonKey(unknownEnumValue: CampaignStatus.unknown)
    required CampaignStatus status,
    @JsonKey(unknownEnumValue: CampaignObjective.unknown)
    required CampaignObjective objective,
    @JsonKey(unknownEnumValue: AdChannel.Social) required AdChannel channel,
    required int budget,
    required int spend,
    required int impressions,
    required int clicks,
    required int conversions,

    @JsonKey(name: 'cost_per_click') required double costPerClick,

    @JsonKey(name: 'cost_per_conversion') required double costPerConversion,

    @JsonKey(name: 'start_date') required String startDate,

    @JsonKey(name: 'end_date') required String endDate,

    required String currency,

    @JsonKey(name: 'target_audience')
    required TargetAudienceModel targetAudience,

    @JsonKey(name: 'daily_budget') required int dailyBudget,

    required double ctr,

    @JsonKey(name: 'budget_utilization') required double budgetUtilization,
  }) = _CampaignDetailModel;

  factory CampaignDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailModelFromJson(json);
}

///
/// TARGET AUDIENCE MODEL
///
@freezed
abstract class TargetAudienceModel with _$TargetAudienceModel {
  const factory TargetAudienceModel({
    @JsonKey(name: 'age_range') required String ageRange,

    required List<String> regions,

    required List<String> interests,
  }) = _TargetAudienceModel;

  factory TargetAudienceModel.fromJson(Map<String, dynamic> json) =>
      _$TargetAudienceModelFromJson(json);
}

///
/// RESPONSE TO ENTITY
///
extension CampaignDetailResponseModelMapper on CampaignDetailResponseModel {
  CampaignDetailResponseEntity toEntity() {
    return CampaignDetailResponseEntity(campaign: campaign.toEntity());
  }
}

///
/// CAMPAIGN TO ENTITY
///
extension CampaignDetailModelMapper on CampaignDetailModel {
  CampaignDetailEntity toEntity() {
    return CampaignDetailEntity(
      id: id,
      name: name,
      status: status,
      objective: objective,
      channel: channel,
      budget: budget,
      spend: spend,
      impressions: impressions,
      clicks: clicks,
      conversions: conversions,
      costPerClick: costPerClick,
      costPerConversion: costPerConversion,
      startDate: startDate,
      endDate: endDate,
      currency: currency,
      targetAudience: targetAudience.toEntity(),
      dailyBudget: dailyBudget,
      ctr: ctr,
      budgetUtilization: budgetUtilization,
    );
  }
}

///
/// TARGET AUDIENCE TO ENTITY
///
extension TargetAudienceModelMapper on TargetAudienceModel {
  TargetAudienceEntity toEntity() {
    return TargetAudienceEntity(
      ageRange: ageRange,
      regions: regions,
      interests: interests,
    );
  }
}
