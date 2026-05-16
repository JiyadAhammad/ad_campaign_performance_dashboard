import '../../core/di/injection.dart';
import 'data/datasource/campaign_details_remote_datasource_impl.dart';
import 'data/datasource/i_campaign_details_remote_datasource.dart';
import 'data/repository/campaign_details_repository_impl.dart';
import 'domain/repository/i_campaign_details_repository.dart';
import 'domain/usecase/get_campaign_details_history_usecase.dart';
import 'domain/usecase/get_campaign_details_usecase.dart';
import 'domain/usecase/get_campaign_forecast_usecase.dart';
import 'presentation/bloc/campaign_details_bloc.dart';

Future<void> registerCampaignDetailsDependencies() async {
  /// Datasource
  sl.registerLazySingleton<ICampaignDetailsRemoteDatasource>(
    () => CampaignDetailsRemoteDatasourceImpl(dio: sl()),
  );

  /// Repository
  sl.registerLazySingleton<ICampaignDetailsRepository>(
    () => CampaignDetailsRepositoryImpl(remoteDataSource: sl()),
  );

  /// UseCases
  sl.registerLazySingleton(() => GetCampaignDetailsUseCase(sl()));
  sl.registerLazySingleton(() => GetCampaignDetailsHistoryUseCase(sl()));
  sl.registerLazySingleton(() => GetCampaignForecastUseCase(sl()));

  /// Bloc
  sl.registerFactory(
    () => CampaignDetailsBloc(
      getCampaignDetailsUseCase: sl(),
      getCampaignDetailsHistoryUseCase: sl(),
      getCampaignForecastUseCase: sl(),
    ),
  );
}
