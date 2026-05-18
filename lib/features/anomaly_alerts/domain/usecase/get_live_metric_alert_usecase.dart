import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entity/live_campaign_alert_entity.dart';
import '../repository/i_anomaly_alert_repository.dart';

class GetLiveMetricAlertUseCase
    implements
        UseCase<ResultFuture<LiveCampaignMetricsResponseEntity>, NoParams> {
  GetLiveMetricAlertUseCase({required this.repository});
  final IAnomalyAlertRepository repository;

  @override
  ResultFuture<LiveCampaignMetricsResponseEntity> call(NoParams params) {
    return repository.getLiveMetricAlert();
  }
}
