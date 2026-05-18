// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_detect_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnomalyDetectResponseModel _$AnomalyDetectResponseModelFromJson(
  Map<String, dynamic> json,
) => _AnomalyDetectResponseModel(
  checkedAt: json['checked_at'] as String,
  anomalyCount: (json['anomaly_count'] as num).toInt(),
  anomalies: (json['anomalies'] as List<dynamic>)
      .map((e) => AnomalyModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AnomalyDetectResponseModelToJson(
  _AnomalyDetectResponseModel instance,
) => <String, dynamic>{
  'checked_at': instance.checkedAt,
  'anomaly_count': instance.anomalyCount,
  'anomalies': instance.anomalies,
};

_AnomalyModel _$AnomalyModelFromJson(Map<String, dynamic> json) =>
    _AnomalyModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      campaignName: json['campaign_name'] as String,
      detectedAt: json['detected_at'] as String,
      type: $enumDecode(
        _$AnomalyTypeEnumMap,
        json['type'],
        unknownValue: AnomalyType.unknown,
      ),
      severity: $enumDecode(
        _$AnomalySeverityEnumMap,
        json['severity'],
        unknownValue: AnomalySeverity.unknown,
      ),
      metric: json['metric'] as String,
      actualValue: _doubleFromJson(json['actual_value']),
      expectedValue: _doubleFromJson(json['expected_value']),
      deviationPercent: _doubleFromJson(json['deviation_percent']),
      message: json['message'] as String,
    );

Map<String, dynamic> _$AnomalyModelToJson(_AnomalyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'campaign_name': instance.campaignName,
      'detected_at': instance.detectedAt,
      'type': _$AnomalyTypeEnumMap[instance.type]!,
      'severity': _$AnomalySeverityEnumMap[instance.severity]!,
      'metric': instance.metric,
      'actual_value': instance.actualValue,
      'expected_value': instance.expectedValue,
      'deviation_percent': instance.deviationPercent,
      'message': instance.message,
    };

const _$AnomalyTypeEnumMap = {
  AnomalyType.SpendSpike: 'spend_spike',
  AnomalyType.CtrDrop: 'ctr_drop',
  AnomalyType.CpaIncrease: 'cpa_increase',
  AnomalyType.unknown: 'unknown',
};

const _$AnomalySeverityEnumMap = {
  AnomalySeverity.low: 'low',
  AnomalySeverity.medium: 'medium',
  AnomalySeverity.high: 'high',
  AnomalySeverity.unknown: 'unknown',
};
