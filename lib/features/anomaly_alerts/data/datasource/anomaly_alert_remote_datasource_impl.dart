import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/error/error_handler.dart';
import '../../../../core/network/end_points/api_end_points.dart';
import '../model/anomaly_detect_model/anomaly_detect_model.dart';
import '../model/live_campaign_metrics_model/live_campaign_alert.dart';
import 'i_anomaly_alerts_remote_datasource.dart';

class AnomalyAlertRemoteDatasourceImpl
    implements IAnomalyAlertsRemoteDatasource {
  AnomalyAlertRemoteDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<LiveCampaignMetricsResponseModel> getLiveMetricAlert() async {
    try {
      final Response<dynamic> response = await dio.get(
        ApiEndPoints.campaignMetrics,
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final LiveCampaignMetricsResponseModel result =
          LiveCampaignMetricsResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<AnomalyDetectResponseModel> getAnomalyDetect() async {
    try {
      final Response<dynamic> response = await dio.post(
        ApiEndPoints.anomalyDetect,
      );

      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;

      final AnomalyDetectResponseModel result =
          AnomalyDetectResponseModel.fromJson(jsonResponse);

      return result;
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
