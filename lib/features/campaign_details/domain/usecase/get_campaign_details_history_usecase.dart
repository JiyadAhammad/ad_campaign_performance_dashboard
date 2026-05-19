import '../../../../core/utils/typedef.dart';
import '../entity/campaign_details_history_entity.dart';
import '../repository/i_campaign_details_repository.dart';

class GetCampaignDetailsHistoryUseCase {
  GetCampaignDetailsHistoryUseCase(this.repository);
  final ICampaignDetailsRepository repository;

  ResultFuture<CampaignDetailsHistoryEntity> call(
    CampaignDetailsHistoryRequestParam param,
  ) {
    return repository.getCampaignDetailsHistory(campaignId: param.campaignId);
  }
}

class CampaignDetailsHistoryRequestParam {
  CampaignDetailsHistoryRequestParam({required this.campaignId});

  final String campaignId;
}
