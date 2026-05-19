import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/error/error_handler.dart';
import '../../../../core/network/end_points/api_end_points.dart';
import '../model/spend_summary_model.dart';
import 'i_spend_summary_remote_datasource.dart';

class SpendSummaryRemoteDatasourceImpl
    implements ISpendSummaryRemoteDatasource {
  SpendSummaryRemoteDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<CampaignAnalyticsResponseModel> getSpendSummary() async {
    try {
      final Response<dynamic> response = await dio.get(
        ApiEndPoints.campaignSummary,
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final CampaignAnalyticsResponseModel result =
          CampaignAnalyticsResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
