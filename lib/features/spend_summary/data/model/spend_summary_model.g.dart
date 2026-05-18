// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignAnalyticsResponseModel _$CampaignAnalyticsResponseModelFromJson(
  Map<String, dynamic> json,
) => _CampaignAnalyticsResponseModel(
  range: json['range'] as String,
  summary: CampaignAnalyticsSummaryModel.fromJson(
    json['summary'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CampaignAnalyticsResponseModelToJson(
  _CampaignAnalyticsResponseModel instance,
) => <String, dynamic>{'range': instance.range, 'summary': instance.summary};

_CampaignAnalyticsSummaryModel _$CampaignAnalyticsSummaryModelFromJson(
  Map<String, dynamic> json,
) => _CampaignAnalyticsSummaryModel(
  totalSpend: intFromJson(json['total_spend']),
  totalImpressions: intFromJson(json['total_impressions']),
  totalClicks: intFromJson(json['total_clicks']),
  overallCtr: doubleFromJson(json['overall_ctr']),
  byChannel: (json['by_channel'] as List<dynamic>)
      .map((e) => ChannelAnalyticsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  topCampaigns: (json['top_campaigns'] as List<dynamic>)
      .map((e) => TopCampaignModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CampaignAnalyticsSummaryModelToJson(
  _CampaignAnalyticsSummaryModel instance,
) => <String, dynamic>{
  'total_spend': instance.totalSpend,
  'total_impressions': instance.totalImpressions,
  'total_clicks': instance.totalClicks,
  'overall_ctr': instance.overallCtr,
  'by_channel': instance.byChannel,
  'top_campaigns': instance.topCampaigns,
};

_ChannelAnalyticsModel _$ChannelAnalyticsModelFromJson(
  Map<String, dynamic> json,
) => _ChannelAnalyticsModel(
  channel: $enumDecode(
    _$AdChannelEnumMap,
    json['channel'],
    unknownValue: AdChannel.Social,
  ),
  spend: intFromJson(json['spend']),
  impressions: intFromJson(json['impressions']),
  clicks: intFromJson(json['clicks']),
);

Map<String, dynamic> _$ChannelAnalyticsModelToJson(
  _ChannelAnalyticsModel instance,
) => <String, dynamic>{
  'channel': _$AdChannelEnumMap[instance.channel]!,
  'spend': instance.spend,
  'impressions': instance.impressions,
  'clicks': instance.clicks,
};

const _$AdChannelEnumMap = {
  AdChannel.Social: 'Social',
  AdChannel.Search: 'Search',
  AdChannel.Display: 'Display',
  AdChannel.unknown: 'unknown',
};

_TopCampaignModel _$TopCampaignModelFromJson(Map<String, dynamic> json) =>
    _TopCampaignModel(
      id: json['id'] as String,
      name: json['name'] as String,
      ctr: doubleFromJson(json['ctr']),
      spend: intFromJson(json['spend']),
    );

Map<String, dynamic> _$TopCampaignModelToJson(_TopCampaignModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ctr': instance.ctr,
      'spend': instance.spend,
    };
