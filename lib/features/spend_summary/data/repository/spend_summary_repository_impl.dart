import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entity/spend_summary_entity.dart';
import '../../domain/repository/i_spend_summary_repository.dart';
import '../datasource/i_spend_summary_remote_datasource.dart';
import '../model/spend_summary_model.dart';

class SpendSummaryRepositoryImpl implements ISpendSummaryRepository {
  SpendSummaryRepositoryImpl({required this.remoteDataSource});
  final ISpendSummaryRemoteDatasource remoteDataSource;

  @override
  ResultFuture<CampaignAnalyticsResponseEntity> getSpendSummary() async {
    try {
      final CampaignAnalyticsResponseModel result = await remoteDataSource
          .getSpendSummary();

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
