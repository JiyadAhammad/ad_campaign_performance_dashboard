import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entity/campaign_entity.dart';
import '../repository/i_campaign_repository.dart';

class GetCampaignsUseCase
    implements UseCase<ResultFuture<List<CampaignEntity>>, NoParams> {
  GetCampaignsUseCase({required this.repository});
  final ICampaignRepository repository;

  @override
  ResultFuture<List<CampaignEntity>> call(NoParams params) {
    return repository.getCampaigns();
  }
}
