import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/live_campaign_alert_entity.dart';

part 'live_campaign_alert.freezed.dart';
part 'live_campaign_alert.g.dart';

///
/// RESPONSE MODEL
///
@freezed
abstract class LiveCampaignMetricsResponseModel
    with _$LiveCampaignMetricsResponseModel {
  const factory LiveCampaignMetricsResponseModel({
    required String timestamp,
    required List<LiveCampaignMetricsModel> campaigns,
  }) = _LiveCampaignMetricsResponseModel;

  factory LiveCampaignMetricsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$LiveCampaignMetricsResponseModelFromJson(json);
}

///
/// CAMPAIGN MODEL
///
@freezed
abstract class LiveCampaignMetricsModel with _$LiveCampaignMetricsModel {
  const factory LiveCampaignMetricsModel({
    required String id,

    @JsonKey(name: 'impressions_last_hour') required int impressionsLastHour,

    @JsonKey(name: 'clicks_last_hour') required int clicksLastHour,

    @JsonKey(name: 'spend_last_hour') required double spendLastHour,

    @JsonKey(name: 'ctr_last_hour') required double ctrLastHour,
  }) = _LiveCampaignMetricsModel;

  factory LiveCampaignMetricsModel.fromJson(Map<String, dynamic> json) =>
      _$LiveCampaignMetricsModelFromJson(json);
}

///
/// TO ENTITY
///
extension LiveCampaignMetricsModelMapper on LiveCampaignMetricsModel {
  LiveCampaignMetricsEntity toEntity() {
    return LiveCampaignMetricsEntity(
      id: id,
      impressionsLastHour: impressionsLastHour,
      clicksLastHour: clicksLastHour,
      spendLastHour: spendLastHour,
      ctrLastHour: ctrLastHour,
    );
  }
}

///
/// RESPONSE TO ENTITY
///
extension LiveCampaignMetricsResponseModelMapper
    on LiveCampaignMetricsResponseModel {
  LiveCampaignMetricsResponseEntity toEntity() {
    return LiveCampaignMetricsResponseEntity(
      timestamp: timestamp,
      campaigns: campaigns
          .map((LiveCampaignMetricsModel model) => model.toEntity())
          .toList(),
    );
  }
}
