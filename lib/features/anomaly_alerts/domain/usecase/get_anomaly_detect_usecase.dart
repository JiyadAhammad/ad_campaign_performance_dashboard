import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entity/anomaly_detect_entity.dart';
import '../repository/i_anomaly_alert_repository.dart';

class GetAnomalyDetectUseCase
    implements UseCase<ResultFuture<AnomalyDetectResponseEntity>, NoParams> {
  GetAnomalyDetectUseCase({required this.repository});
  final IAnomalyAlertRepository repository;

  @override
  ResultFuture<AnomalyDetectResponseEntity> call(NoParams params) {
    return repository.getAnomalyDetect();
  }
}
