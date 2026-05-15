import '../../../../core/utils/typedef.dart';
import '../entity/campaign_entity.dart';

abstract class ICampaignRepository {
  ResultFuture<List<CampaignEntity>> getCampaigns();
}
