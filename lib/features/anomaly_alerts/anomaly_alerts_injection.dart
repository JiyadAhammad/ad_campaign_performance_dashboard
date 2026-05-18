import '../../core/di/injection.dart';
import 'data/datasource/anomaly_alert_remote_datasource_impl.dart';
import 'data/datasource/i_anomaly_alerts_remote_datasource.dart';
import 'data/repository/anomaly_alert_repository_impl.dart';
import 'domain/repository/i_anomaly_alert_repository.dart';
import 'domain/usecase/get_anomaly_detect_usecase.dart';
import 'domain/usecase/get_live_metric_alert_usecase.dart';
import 'presentation/bloc/anomaly_alert_bloc.dart';

Future<void> registerAnomalyAlertDependencies() async {
  /// Datasource
  sl.registerLazySingleton<IAnomalyAlertsRemoteDatasource>(
    () => AnomalyAlertRemoteDatasourceImpl(dio: sl()),
  );

  /// Repository
  sl.registerLazySingleton<IAnomalyAlertRepository>(
    () => AnomalyAlertRepositoryImpl(remoteDataSource: sl()),
  );

  /// UseCases
  sl.registerLazySingleton(() => GetLiveMetricAlertUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetAnomalyDetectUseCase(repository: sl()));

  /// Bloc
  sl.registerFactory(
    () => AnomalyAlertBloc(
      getLiveMetricAlertUseCase: sl(),
      getAnomalyDetectUseCase: sl(),
    ),
  );
}
