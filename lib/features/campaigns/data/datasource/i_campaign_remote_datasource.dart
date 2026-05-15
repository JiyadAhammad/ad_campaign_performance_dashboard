import '../model/campaign_model.dart';

abstract interface class ICampaignRemoteDatasource {
  /// List all campaigns with summary metrics
  Future<List<CampaignModel>> getCampaigns();
}
