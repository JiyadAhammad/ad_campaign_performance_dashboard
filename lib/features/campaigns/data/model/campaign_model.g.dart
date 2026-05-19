// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignResponseModel _$CampaignResponseModelFromJson(
  Map<String, dynamic> json,
) => _CampaignResponseModel(
  campaigns: (json['campaigns'] as List<dynamic>)
      .map((e) => CampaignModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$CampaignResponseModelToJson(
  _CampaignResponseModel instance,
) => <String, dynamic>{
  'campaigns': instance.campaigns,
  'total': instance.total,
};

_CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) =>
    _CampaignModel(
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
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      currency: json['currency'] as String,
      thumbnail: json['thumbnail'] as String,
      ctr: (json['ctr'] as num).toDouble(),
      budgetUtilization: _doubleFromJson(json['budget_utilization']),
    );

Map<String, dynamic> _$CampaignModelToJson(_CampaignModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$CampaignStatusEnumMap[instance.status]!,
      'objective': _$CampaignObjectiveEnumMap[instance.objective]!,
      'channel': _$AdChannelEnumMap[instance.channel]!,
      'budget': instance.budget,
      'spend': instance.spend,
      'impressions': instance.impressions,
      'clicks': instance.clicks,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'currency': instance.currency,
      'thumbnail': instance.thumbnail,
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
