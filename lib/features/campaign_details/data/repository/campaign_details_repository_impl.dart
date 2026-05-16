import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entity/campaign_details_entity.dart';
import '../../domain/entity/campaign_details_history_entity.dart';
import '../../domain/entity/campaign_forecast_entity.dart';
import '../../domain/repository/i_campaign_details_repository.dart';
import '../datasource/i_campaign_details_remote_datasource.dart';
import '../model/campaign_details_history_model/campaign_details_history_model.dart';
import '../model/campaign_details_model/campaign_details_model.dart';
import '../model/campaign_forecast_model/campaign_forecast_model.dart';

class CampaignDetailsRepositoryImpl implements ICampaignDetailsRepository {
  CampaignDetailsRepositoryImpl({required this.remoteDataSource});
  final ICampaignDetailsRemoteDatasource remoteDataSource;

  @override
  ResultFuture<CampaignDetailResponseEntity> getCampaignDetails({
    required String campaignId,
  }) async {
    try {
      final CampaignDetailResponseModel result = await remoteDataSource
          .getCampaignDetails(campaignId: campaignId);

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
  ResultFuture<CampaignDetailsHistoryEntity> getCampaignDetailsHistory({
    required String campaignId,
  }) async {
    try {
      final CampaignHistoryResponseModel result = await remoteDataSource
          .getCampaignDetailsHistory(campaignId: campaignId);

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
  ResultFuture<CampaignForecastResponseEntity> getCampaignForecast({
    required String campaignId,
    required int horizonDays,
    required List<CampaignHistoryEntity> campaignHistory,
  }) async {
    try {
      final List<CampaignHistoryModel> campaignHistoryModel = campaignHistory
          .map(
            (CampaignHistoryEntity e) => CampaignHistoryModel(
              date: e.date,
              impressions: e.impressions,
              clicks: e.clicks,
              ctr: e.ctr,
            ),
          )
          .toList();
      final CampaignForecastResponseModel result = await remoteDataSource
          .getCampaignForecast(
            campaignId: campaignId,
            horizonDays: horizonDays,
            campaignHistory: campaignHistoryModel,
          );

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
