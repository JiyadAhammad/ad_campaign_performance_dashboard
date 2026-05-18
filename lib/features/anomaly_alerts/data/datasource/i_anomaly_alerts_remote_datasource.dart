import '../model/anomaly_detect_model/anomaly_detect_model.dart';
import '../model/live_campaign_metrics_model/live_campaign_alert.dart';

abstract interface class IAnomalyAlertsRemoteDatasource {
  /// Latest metrics snapshot (for polling)
  Future<LiveCampaignMetricsResponseModel> getLiveMetricAlert();

  /// Send snapshot, receive anomaly flags
  Future<AnomalyDetectResponseModel> getAnomalyDetect();
}
