// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_campaign_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LiveCampaignMetricsResponseModel _$LiveCampaignMetricsResponseModelFromJson(
  Map<String, dynamic> json,
) => _LiveCampaignMetricsResponseModel(
  timestamp: json['timestamp'] as String,
  campaigns: (json['campaigns'] as List<dynamic>)
      .map((e) => LiveCampaignMetricsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LiveCampaignMetricsResponseModelToJson(
  _LiveCampaignMetricsResponseModel instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'campaigns': instance.campaigns,
};

_LiveCampaignMetricsModel _$LiveCampaignMetricsModelFromJson(
  Map<String, dynamic> json,
) => _LiveCampaignMetricsModel(
  id: json['id'] as String,
  impressionsLastHour: (json['impressions_last_hour'] as num).toInt(),
  clicksLastHour: (json['clicks_last_hour'] as num).toInt(),
  spendLastHour: (json['spend_last_hour'] as num).toDouble(),
  ctrLastHour: (json['ctr_last_hour'] as num).toDouble(),
);

Map<String, dynamic> _$LiveCampaignMetricsModelToJson(
  _LiveCampaignMetricsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'impressions_last_hour': instance.impressionsLastHour,
  'clicks_last_hour': instance.clicksLastHour,
  'spend_last_hour': instance.spendLastHour,
  'ctr_last_hour': instance.ctrLastHour,
};
