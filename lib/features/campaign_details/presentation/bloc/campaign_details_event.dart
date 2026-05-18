part of 'campaign_details_bloc.dart';

@freezed
abstract class CampaignDetailsEvent with _$CampaignDetailsEvent {
  // const factory CampaignDetailsEvent.getCampaignDetails({
  //   required String campaignId,
  // }) = _GetCampaignDetails;
  // const factory CampaignDetailsEvent.getCampaignDetailsHistory({
  //   required String campaignId,
  // }) = _GetCampaignDetailsHistory;
  // const factory CampaignDetailsEvent.getCampaignForecast({
  //   required String campaignId,
  //   required int horizonDays,
  //   required List<CampaignHistoryEntity> campaignHistory,
  // }) = _GetCampaignForecast;

  const factory CampaignDetailsEvent.loadCampaignCompleteData({
    required String campaignId,
  }) = _LoadCampaignCompleteData;
}
