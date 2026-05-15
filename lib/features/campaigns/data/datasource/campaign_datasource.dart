abstract interface class ICampaignDatasource {
  /// List all campaigns with summary metrics
  Future<void> fetchCampaigns();
}
