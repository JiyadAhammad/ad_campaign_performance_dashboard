import '../../../../core/utils/typedef.dart';
import '../entity/campaign_details_history_entity.dart';
import '../entity/campaign_forecast_entity.dart';
import '../repository/i_campaign_details_repository.dart';

class GetCampaignForecastUseCase {
  GetCampaignForecastUseCase(this.repository);
  final ICampaignDetailsRepository repository;

  ResultFuture<CampaignForecastResponseEntity> call(
    CampaignForecastRequestParam param,
  ) {
    return repository.getCampaignForecast(
      campaignId: param.campaignId,
      horizonDays: param.horizonDays,
      campaignHistory: param.campaignHistory,
    );
  }
}

class CampaignForecastRequestParam {
  CampaignForecastRequestParam({
    required this.campaignId,
    required this.horizonDays,
    required this.campaignHistory,
  });

  final String campaignId;
  final int horizonDays;
  final List<CampaignHistoryEntity> campaignHistory;
}
