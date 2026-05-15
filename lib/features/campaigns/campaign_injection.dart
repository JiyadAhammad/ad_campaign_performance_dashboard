import '../../core/di/injection.dart';
import 'data/datasource/campaign_remote_datasource_impl.dart';
import 'data/datasource/i_campaign_remote_datasource.dart';
import 'data/repository/campaign_repository_impl.dart';
import 'domain/repository/i_campaign_repository.dart';
import 'domain/usecase/get_campaigns_usecase.dart';
import 'presentation/bloc/campaign_bloc.dart';

Future<void> registerCampaignDependencies() async {
  /// Datasource
  sl.registerLazySingleton<ICampaignRemoteDatasource>(
    () => CampaignRemoteDataSourceImpl(dio: sl()),
  );

  /// Repository
  sl.registerLazySingleton<ICampaignRepository>(
    () => CampaignRepositoryImpl(remoteDataSource: sl()),
  );

  /// UseCases
  sl.registerLazySingleton(() => GetCampaignsUseCase(repository: sl()));

  /// Bloc
  sl.registerFactory(() => CampaignBloc(getCampaignsUseCase: sl()));
}
