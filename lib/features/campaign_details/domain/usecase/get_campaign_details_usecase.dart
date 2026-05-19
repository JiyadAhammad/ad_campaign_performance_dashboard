import '../../../../core/utils/typedef.dart';
import '../entity/campaign_details_entity.dart';
import '../repository/i_campaign_details_repository.dart';

class GetCampaignDetailsUseCase {
  GetCampaignDetailsUseCase(this.repository);
  final ICampaignDetailsRepository repository;

  ResultFuture<CampaignDetailResponseEntity> call(
    CampaignDetailsRequestParam param,
  ) {
    return repository.getCampaignDetails(campaignId: param.campaignId);
  }
}

class CampaignDetailsRequestParam {
  CampaignDetailsRequestParam({required this.campaignId});

  final String campaignId;
}
