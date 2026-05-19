import '../../../../core/utils/typedef.dart';
import '../entity/anomaly_detect_entity.dart';
import '../entity/live_campaign_alert_entity.dart';

abstract class IAnomalyAlertRepository {
  ResultFuture<LiveCampaignMetricsResponseEntity> getLiveMetricAlert();
  ResultFuture<AnomalyDetectResponseEntity> getAnomalyDetect();
}
