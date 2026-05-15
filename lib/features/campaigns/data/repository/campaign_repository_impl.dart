import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entity/campaign_entity.dart';
import '../../domain/repository/i_campaign_repository.dart';
import '../datasource/i_campaign_remote_datasource.dart';
import '../model/campaign_model.dart';

class CampaignRepositoryImpl implements ICampaignRepository {
  CampaignRepositoryImpl({required this.remoteDataSource});
  final ICampaignRemoteDatasource remoteDataSource;

  @override
  ResultFuture<List<CampaignEntity>> getCampaigns() async {
    try {
      final List<CampaignModel> result = await remoteDataSource.getCampaigns();

      return right(result.map((CampaignModel e) => e.toEntity()).toList());
    } on ServerException catch (error) {
      return left(ServerFailure(error.message));
    } on NetworkException catch (error) {
      return left(NetworkFailure(error.message));
    } catch (error) {
      return left(UnknownFailure(error.toString()));
    }
  }
}
