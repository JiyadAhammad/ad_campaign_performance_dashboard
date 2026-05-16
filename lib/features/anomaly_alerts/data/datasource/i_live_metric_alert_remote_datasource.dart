import '../model/live_campaign_alert.dart';

abstract interface class ILiveMetricAlertRemoteDatasource {
  /// Latest metrics snapshot (for polling)
  Future<LiveCampaignMetricsResponseModel> getCampaigns();
}
