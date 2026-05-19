import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entity/anomaly_detect_entity.dart';
import '../../domain/entity/live_campaign_alert_entity.dart';
import '../../domain/repository/i_anomaly_alert_repository.dart';
import '../datasource/i_anomaly_alerts_remote_datasource.dart';
import '../model/anomaly_detect_model/anomaly_detect_model.dart';
import '../model/live_campaign_metrics_model/live_campaign_alert.dart';

class AnomalyAlertRepositoryImpl implements IAnomalyAlertRepository {
  AnomalyAlertRepositoryImpl({required this.remoteDataSource});
  final IAnomalyAlertsRemoteDatasource remoteDataSource;

  @override
  ResultFuture<LiveCampaignMetricsResponseEntity> getLiveMetricAlert() async {
    try {
      final LiveCampaignMetricsResponseModel result = await remoteDataSource
          .getLiveMetricAlert();

      return right(result.toEntity());
    } on ServerException catch (error) {
      return left(ServerFailure(error.message));
    } on NetworkException catch (error) {
      return left(NetworkFailure(error.message));
    } catch (error) {
      return left(UnknownFailure(error.toString()));
    }
  }

  @override
  ResultFuture<AnomalyDetectResponseEntity> getAnomalyDetect() async {
    try {
      final AnomalyDetectResponseModel result = await remoteDataSource
          .getAnomalyDetect();

      return right(result.toEntity());
    } on ServerException catch (error) {
      return left(ServerFailure(error.message));
    } on NetworkException catch (error) {
      return left(NetworkFailure(error.message));
    } catch (error) {
      return left(UnknownFailure(error.toString()));
    }
  }
}
