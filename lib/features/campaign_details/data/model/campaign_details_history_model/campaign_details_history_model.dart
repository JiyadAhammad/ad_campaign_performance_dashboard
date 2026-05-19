import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/campaign_details_history_entity.dart';

part 'campaign_details_history_model.freezed.dart';
part 'campaign_details_history_model.g.dart';

@freezed
abstract class CampaignHistoryResponseModel
    with _$CampaignHistoryResponseModel {
  const factory CampaignHistoryResponseModel({
    @JsonKey(name: 'campaign_id') required String campaignId,

    @JsonKey(name: 'data_points') required int dataPoints,

    required List<CampaignHistoryModel> history,
  }) = _CampaignHistoryResponseModel;

  factory CampaignHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignHistoryResponseModelFromJson(json);
}

@freezed
abstract class CampaignHistoryModel with _$CampaignHistoryModel {
  const factory CampaignHistoryModel({
    required String date,

    required int impressions,

    required int clicks,

    required double ctr,
  }) = _CampaignHistoryModel;

  factory CampaignHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignHistoryModelFromJson(json);
}

extension CampaignHistoryResponseModelMapper on CampaignHistoryResponseModel {
  CampaignDetailsHistoryEntity toEntity() {
    return CampaignDetailsHistoryEntity(
      campaignId: campaignId,
      dataPoints: dataPoints,
      history: history
          .map((CampaignHistoryModel model) => model.toEntity())
          .toList(),
    );
  }
}

extension CampaignHistoryModelMapper on CampaignHistoryModel {
  CampaignHistoryEntity toEntity() {
    return CampaignHistoryEntity(
      date: date,
      impressions: impressions,
      clicks: clicks,
      ctr: ctr,
    );
  }
}
