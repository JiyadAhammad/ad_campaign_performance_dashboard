import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/error/error_handler.dart';
import '../../../../core/network/end_points/api_end_points.dart';
import '../model/campaign_details_history_model/campaign_details_history_model.dart';
import '../model/campaign_details_model/campaign_details_model.dart';
import '../model/campaign_forecast_model/campaign_forecast_model.dart';
import 'i_campaign_details_remote_datasource.dart';

class CampaignDetailsRemoteDatasourceImpl
    implements ICampaignDetailsRemoteDatasource {
  CampaignDetailsRemoteDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<CampaignDetailResponseModel> getCampaignDetails({
    required String campaignId,
  }) async {
    try {
      final Response<dynamic> response = await dio.get(
        '${ApiEndPoints.campaigns}/$campaignId',
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final CampaignDetailResponseModel result =
          CampaignDetailResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<CampaignHistoryResponseModel> getCampaignDetailsHistory({
    required String campaignId,
  }) async {
    try {
      final Response<dynamic> response = await dio.get(
        '${ApiEndPoints.campaigns}/$campaignId/history',
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final CampaignHistoryResponseModel result =
          CampaignHistoryResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<CampaignForecastResponseModel> getCampaignForecast({
    required String campaignId,
    required int horizonDays,
    required List<CampaignHistoryModel> campaignHistory,
  }) async {
    try {
      final List<Map<String, dynamic>> historyJson = campaignHistory
          .map((CampaignHistoryModel e) => e.toJson())
          .toList();

      final Map<String, dynamic> requestBody = <String, dynamic>{
        'campaign_id': campaignId,
        'history': historyJson,
        'horizon_days': horizonDays,
      };
      final Response<dynamic> response = await dio.post(
        ApiEndPoints.campaignForecast,
        data: requestBody,
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final CampaignForecastResponseModel result =
          CampaignForecastResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
