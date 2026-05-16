part of 'live_metric_alert_bloc.dart';

@freezed
abstract class LiveMetricAlertState with _$LiveMetricAlertState {
  const factory LiveMetricAlertState({
    @Default(false) bool isLoading,
    @Default(<LiveCampaignMetricsEntity>[])
    List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _LiveMetricAlertState;
}
