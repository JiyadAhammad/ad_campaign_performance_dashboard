// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_details_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignHistoryResponseModel _$CampaignHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _CampaignHistoryResponseModel(
  campaignId: json['campaign_id'] as String,
  dataPoints: (json['data_points'] as num).toInt(),
  history: (json['history'] as List<dynamic>)
      .map((e) => CampaignHistoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CampaignHistoryResponseModelToJson(
  _CampaignHistoryResponseModel instance,
) => <String, dynamic>{
  'campaign_id': instance.campaignId,
  'data_points': instance.dataPoints,
  'history': instance.history,
};

_CampaignHistoryModel _$CampaignHistoryModelFromJson(
  Map<String, dynamic> json,
) => _CampaignHistoryModel(
  date: json['date'] as String,
  impressions: (json['impressions'] as num).toInt(),
  clicks: (json['clicks'] as num).toInt(),
  ctr: (json['ctr'] as num).toDouble(),
);

Map<String, dynamic> _$CampaignHistoryModelToJson(
  _CampaignHistoryModel instance,
) => <String, dynamic>{
  'date': instance.date,
  'impressions': instance.impressions,
  'clicks': instance.clicks,
  'ctr': instance.ctr,
};
