part of 'anomaly_alert_bloc.dart';

@freezed
abstract class AnomalyAlertState with _$AnomalyAlertState {
  const factory AnomalyAlertState({
    @Default(false) bool isLoading,
    @Default(<LiveCampaignMetricsEntity>[])
    List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,
    @Default(<AnomalyEntity>[]) List<AnomalyEntity> anomalyEntity,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _AnomalyAlertState;
}
