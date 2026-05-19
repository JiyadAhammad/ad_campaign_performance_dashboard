import '../../core/di/injection.dart';
import 'data/datasource/i_spend_summary_remote_datasource.dart';
import 'data/datasource/spend_summary_remote_datasource_impl.dart';
import 'data/repository/spend_summary_repository_impl.dart';
import 'domain/repository/i_spend_summary_repository.dart';
import 'domain/usecase/get_spend_summary_usecase.dart';
import 'presentation/bloc/spend_summary_bloc.dart';

Future<void> registerSpendSummaryDependencies() async {
  /// Datasource
  sl.registerLazySingleton<ISpendSummaryRemoteDatasource>(
    () => SpendSummaryRemoteDatasourceImpl(dio: sl()),
  );

  /// Repository
  sl.registerLazySingleton<ISpendSummaryRepository>(
    () => SpendSummaryRepositoryImpl(remoteDataSource: sl()),
  );

  /// UseCases
  sl.registerLazySingleton(() => GetSpendSummaryUseCase(repository: sl()));

  /// Bloc
  sl.registerFactory(() => SpendSummaryBloc(getSpendSummaryUseCase: sl()));
}
