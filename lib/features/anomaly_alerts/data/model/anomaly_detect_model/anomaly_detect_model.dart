import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/anomaly_detect_entity.dart';

part 'anomaly_detect_model.freezed.dart';
part 'anomaly_detect_model.g.dart';

double _doubleFromJson(dynamic value) {
  return (value as num).toDouble();
}

@freezed
abstract class AnomalyDetectResponseModel with _$AnomalyDetectResponseModel {
  const factory AnomalyDetectResponseModel({
    @JsonKey(name: 'checked_at') required String checkedAt,
    @JsonKey(name: 'anomaly_count') required int anomalyCount,
    required List<AnomalyModel> anomalies,
  }) = _AnomalyDetectResponseModel;

  factory AnomalyDetectResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnomalyDetectResponseModelFromJson(json);
}

@freezed
abstract class AnomalyModel with _$AnomalyModel {
  const factory AnomalyModel({
    required String id,

    @JsonKey(name: 'campaign_id') required String campaignId,

    @JsonKey(name: 'campaign_name') required String campaignName,

    @JsonKey(name: 'detected_at') required String detectedAt,

    required String type,
    required String severity,
    required String metric,

    @JsonKey(name: 'actual_value', fromJson: _doubleFromJson)
    required double actualValue,

    @JsonKey(name: 'expected_value', fromJson: _doubleFromJson)
    required double expectedValue,

    @JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson)
    required double deviationPercent,

    required String message,
  }) = _AnomalyModel;

  factory AnomalyModel.fromJson(Map<String, dynamic> json) =>
      _$AnomalyModelFromJson(json);
}

extension AnomalyResponseModelMapper on AnomalyDetectResponseModel {
  AnomalyDetectResponseEntity toEntity() {
    return AnomalyDetectResponseEntity(
      checkedAt: checkedAt,
      anomalyCount: anomalyCount,
      anomalies: anomalies
          .map((AnomalyModel model) => model.toEntity())
          .toList(),
    );
  }
}

extension AnomalyModelMapper on AnomalyModel {
  AnomalyEntity toEntity() {
    return AnomalyEntity(
      id: id,
      campaignId: campaignId,
      campaignName: campaignName,
      detectedAt: detectedAt,
      type: type,
      severity: severity,
      metric: metric,
      actualValue: actualValue,
      expectedValue: expectedValue,
      deviationPercent: deviationPercent,
      message: message,
    );
  }
}
