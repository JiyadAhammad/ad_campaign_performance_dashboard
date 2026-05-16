import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entity/live_campaign_alert_entity.dart';
import '../repository/i_live_metric_alert_repository.dart';

class GetLiveMetricAlertUseCase
    implements
        UseCase<ResultFuture<LiveCampaignMetricsResponseEntity>, NoParams> {
  GetLiveMetricAlertUseCase({required this.repository});
  final ILiveMetricAlertRepository repository;

  @override
  ResultFuture<LiveCampaignMetricsResponseEntity> call(NoParams params) {
    return repository.getLiveMetricAlert();
  }
}
