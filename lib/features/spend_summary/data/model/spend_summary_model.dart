import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/spend_summary_entity.dart';
import '../../../../core/enums/enums.dart';

part 'spend_summary_model.freezed.dart';
part 'spend_summary_model.g.dart';

double doubleFromJson(dynamic value) {
  return (value as num).toDouble();
}

int intFromJson(dynamic value) {
  return (value as num).toInt();
}

@freezed
abstract class CampaignAnalyticsResponseModel
    with _$CampaignAnalyticsResponseModel {
  const factory CampaignAnalyticsResponseModel({
    required String range,
    required CampaignAnalyticsSummaryModel summary,
  }) = _CampaignAnalyticsResponseModel;

  factory CampaignAnalyticsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignAnalyticsResponseModelFromJson(json);
}

@freezed
abstract class CampaignAnalyticsSummaryModel
    with _$CampaignAnalyticsSummaryModel {
  const factory CampaignAnalyticsSummaryModel({
    @JsonKey(name: 'total_spend', fromJson: intFromJson)
    required int totalSpend,

    @JsonKey(name: 'total_impressions', fromJson: intFromJson)
    required int totalImpressions,

    @JsonKey(name: 'total_clicks', fromJson: intFromJson)
    required int totalClicks,

    @JsonKey(name: 'overall_ctr', fromJson: doubleFromJson)
    required double overallCtr,

    @JsonKey(name: 'by_channel') required List<ChannelAnalyticsModel> byChannel,

    @JsonKey(name: 'top_campaigns')
    required List<TopCampaignModel> topCampaigns,
  }) = _CampaignAnalyticsSummaryModel;

  factory CampaignAnalyticsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignAnalyticsSummaryModelFromJson(json);
}

@freezed
abstract class ChannelAnalyticsModel with _$ChannelAnalyticsModel {
  const factory ChannelAnalyticsModel({
    @JsonKey(unknownEnumValue: AdChannel.Social) required AdChannel channel,

    @JsonKey(fromJson: intFromJson) required int spend,

    @JsonKey(fromJson: intFromJson) required int impressions,

    @JsonKey(fromJson: intFromJson) required int clicks,
  }) = _ChannelAnalyticsModel;

  factory ChannelAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelAnalyticsModelFromJson(json);
}

@freezed
abstract class TopCampaignModel with _$TopCampaignModel {
  const factory TopCampaignModel({
    required String id,

    required String name,

    @JsonKey(fromJson: doubleFromJson) required double ctr,

    @JsonKey(fromJson: intFromJson) required int spend,
  }) = _TopCampaignModel;

  factory TopCampaignModel.fromJson(Map<String, dynamic> json) =>
      _$TopCampaignModelFromJson(json);
}

/// Entity Mapper

extension CampaignAnalyticsResponseMapper on CampaignAnalyticsResponseModel {
  CampaignAnalyticsResponseEntity toEntity() {
    return CampaignAnalyticsResponseEntity(
      range: range,
      summary: summary.toEntity(),
    );
  }
}

extension CampaignAnalyticsSummaryMapper on CampaignAnalyticsSummaryModel {
  CampaignAnalyticsSummaryEntity toEntity() {
    return CampaignAnalyticsSummaryEntity(
      totalSpend: totalSpend,
      totalImpressions: totalImpressions,
      totalClicks: totalClicks,
      overallCtr: overallCtr,
      byChannel: byChannel
          .map((ChannelAnalyticsModel model) => model.toEntity())
          .toList(),
      topCampaigns: topCampaigns
          .map((TopCampaignModel model) => model.toEntity())
          .toList(),
    );
  }
}

extension ChannelAnalyticsMapper on ChannelAnalyticsModel {
  ChannelAnalyticsEntity toEntity() {
    return ChannelAnalyticsEntity(
      channel: channel,
      spend: spend,
      impressions: impressions,
      clicks: clicks,
    );
  }
}

extension TopCampaignMapper on TopCampaignModel {
  TopCampaignEntity toEntity() {
    return TopCampaignEntity(id: id, name: name, ctr: ctr, spend: spend);
  }
}
