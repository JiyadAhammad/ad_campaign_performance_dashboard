// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignDetailResponseModel _$CampaignDetailResponseModelFromJson(
  Map<String, dynamic> json,
) => _CampaignDetailResponseModel(
  campaign: CampaignDetailModel.fromJson(
    json['campaign'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CampaignDetailResponseModelToJson(
  _CampaignDetailResponseModel instance,
) => <String, dynamic>{'campaign': instance.campaign};

_CampaignDetailModel _$CampaignDetailModelFromJson(Map<String, dynamic> json) =>
    _CampaignDetailModel(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecode(
        _$CampaignStatusEnumMap,
        json['status'],
        unknownValue: CampaignStatus.unknown,
      ),
      objective: $enumDecode(
        _$CampaignObjectiveEnumMap,
        json['objective'],
        unknownValue: CampaignObjective.unknown,
      ),
      channel: $enumDecode(
        _$AdChannelEnumMap,
        json['channel'],
        unknownValue: AdChannel.Social,
      ),
      budget: (json['budget'] as num).toInt(),
      spend: (json['spend'] as num).toInt(),
      impressions: (json['impressions'] as num).toInt(),
      clicks: (json['clicks'] as num).toInt(),
      conversions: (json['conversions'] as num).toInt(),
      costPerClick: (json['cost_per_click'] as num).toDouble(),
      costPerConversion: (json['cost_per_conversion'] as num).toDouble(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      currency: json['currency'] as String,
      targetAudience: TargetAudienceModel.fromJson(
        json['target_audience'] as Map<String, dynamic>,
      ),
      dailyBudget: (json['daily_budget'] as num).toInt(),
      ctr: (json['ctr'] as num).toDouble(),
      budgetUtilization: (json['budget_utilization'] as num).toDouble(),
    );

Map<String, dynamic> _$CampaignDetailModelToJson(
  _CampaignDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': _$CampaignStatusEnumMap[instance.status]!,
  'objective': _$CampaignObjectiveEnumMap[instance.objective]!,
  'channel': _$AdChannelEnumMap[instance.channel]!,
  'budget': instance.budget,
  'spend': instance.spend,
  'impressions': instance.impressions,
  'clicks': instance.clicks,
  'conversions': instance.conversions,
  'cost_per_click': instance.costPerClick,
  'cost_per_conversion': instance.costPerConversion,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'currency': instance.currency,
  'target_audience': instance.targetAudience,
  'daily_budget': instance.dailyBudget,
  'ctr': instance.ctr,
  'budget_utilization': instance.budgetUtilization,
};

const _$CampaignStatusEnumMap = {
  CampaignStatus.Active: 'Active',
  CampaignStatus.Paused: 'Paused',
  CampaignStatus.Ended: 'Ended',
  CampaignStatus.unknown: 'unknown',
};

const _$CampaignObjectiveEnumMap = {
  CampaignObjective.Awareness: 'Awareness',
  CampaignObjective.Conversion: 'Conversion',
  CampaignObjective.Traffic: 'Traffic',
  CampaignObjective.Engagement: 'Engagement',
  CampaignObjective.unknown: 'unknown',
};

const _$AdChannelEnumMap = {
  AdChannel.Social: 'Social',
  AdChannel.Search: 'Search',
  AdChannel.Display: 'Display',
  AdChannel.unknown: 'unknown',
};

_TargetAudienceModel _$TargetAudienceModelFromJson(Map<String, dynamic> json) =>
    _TargetAudienceModel(
      ageRange: json['age_range'] as String,
      regions: (json['regions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      interests: (json['interests'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TargetAudienceModelToJson(
  _TargetAudienceModel instance,
) => <String, dynamic>{
  'age_range': instance.ageRange,
  'regions': instance.regions,
  'interests': instance.interests,
};
