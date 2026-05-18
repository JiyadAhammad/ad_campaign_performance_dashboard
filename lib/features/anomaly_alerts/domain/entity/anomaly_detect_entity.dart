import 'package:equatable/equatable.dart';
import '../../../../core/enums/enums.dart';

class AnomalyDetectResponseEntity extends Equatable {
  const AnomalyDetectResponseEntity({
    required this.checkedAt,
    required this.anomalyCount,
    required this.anomalies,
  });

  final String checkedAt;
  final int anomalyCount;
  final List<AnomalyEntity> anomalies;

  @override
  List<Object?> get props => <Object?>[checkedAt, anomalyCount, anomalies];
}

class AnomalyEntity extends Equatable {
  const AnomalyEntity({
    required this.id,
    required this.campaignId,
    required this.campaignName,
    required this.detectedAt,
    required this.type,
    required this.severity,
    required this.metric,
    required this.actualValue,
    required this.expectedValue,
    required this.deviationPercent,
    required this.message,
  });

  final String id;
  final String campaignId;
  final String campaignName;
  final String detectedAt;
  final AnomalyType type;
  final AnomalySeverity severity;
  final String metric;
  final double actualValue;
  final double expectedValue;
  final double deviationPercent;
  final String message;

  @override
  List<Object?> get props => <Object?>[
    id,
    campaignId,
    campaignName,
    detectedAt,
    type,
    severity,
    metric,
    actualValue,
    expectedValue,
    deviationPercent,
    message,
  ];

  

  

  

  

  double get absoluteDeviation => deviationPercent.abs();
}
