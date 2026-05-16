import '../../../../core/utils/typedef.dart';
import '../entity/live_campaign_alert_entity.dart';

abstract class ILiveMetricAlertRepository {
  ResultFuture<LiveCampaignMetricsResponseEntity> getLiveMetricAlert();
}
