import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/error/error_handler.dart';
import '../../../../core/network/end_points/api_end_points.dart';
import '../model/campaign_model.dart';
import 'i_campaign_remote_datasource.dart';

class CampaignRemoteDataSourceImpl implements ICampaignRemoteDatasource {
  CampaignRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<CampaignModel>> getCampaigns() async {
    try {
      final Response<dynamic> response = await dio.get(ApiEndPoints.campaigns);

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final CampaignResponseModel result = CampaignResponseModel.fromJson(
        jsonResponse,
      );

      return result.campaigns;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
