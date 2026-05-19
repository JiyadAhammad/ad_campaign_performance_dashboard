import '../../../../core/utils/typedef.dart';
import '../entity/campaign_details_entity.dart';
import '../entity/campaign_details_history_entity.dart';
import '../entity/campaign_forecast_entity.dart';

abstract interface class ICampaignDetailsRepository {
  ResultFuture<CampaignDetailResponseEntity> getCampaignDetails({
    required String campaignId,
  });
  ResultFuture<CampaignDetailsHistoryEntity> getCampaignDetailsHistory({
    required String campaignId,
  });
  ResultFuture<CampaignForecastResponseEntity> getCampaignForecast({
    required String campaignId,
    required int horizonDays,
    required List<CampaignHistoryEntity> campaignHistory,
  });
}
