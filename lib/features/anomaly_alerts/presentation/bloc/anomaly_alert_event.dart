part of 'anomaly_alert_bloc.dart';

@freezed
class AnomalyAlertEvent with _$AnomalyAlertEvent {
  const factory AnomalyAlertEvent.getLiveMetricAlert() = _GetLiveMetricAlert;
  const factory AnomalyAlertEvent.getAnomalyDetect() = _GetAnomalyDetect;
}
