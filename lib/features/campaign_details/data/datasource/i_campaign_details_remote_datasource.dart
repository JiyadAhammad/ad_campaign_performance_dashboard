import '../model/campaign_details_history_model/campaign_details_history_model.dart';
import '../model/campaign_details_model/campaign_details_model.dart';
import '../model/campaign_forecast_model/campaign_forecast_model.dart';

abstract interface class ICampaignDetailsRemoteDatasource {
  /// Single campaign full detail
  Future<CampaignDetailResponseModel> getCampaignDetails({
    required String campaignId,
  });

  /// 30-day daily CTR history
  Future<CampaignHistoryResponseModel> getCampaignDetailsHistory({
    required String campaignId,
  });

  /// Send history, receive 7-day forecast
  Future<CampaignForecastResponseModel> getCampaignForecast({
    required String campaignId,
    required int horizonDays,
    required List<CampaignHistoryModel> campaignHistory,
  });
}
