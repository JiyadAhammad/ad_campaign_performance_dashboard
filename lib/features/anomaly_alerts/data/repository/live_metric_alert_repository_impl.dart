import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entity/live_campaign_alert_entity.dart';
import '../../domain/repository/i_live_metric_alert_repository.dart';
import '../datasource/i_live_metric_alert_remote_datasource.dart';
import '../model/live_campaign_alert.dart';

class LiveMetricAlertRepositoryImpl implements ILiveMetricAlertRepository {
  LiveMetricAlertRepositoryImpl({required this.remoteDataSource});
  final ILiveMetricAlertRemoteDatasource remoteDataSource;

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
}
