part of 'spend_summary_bloc.dart';

@freezed
abstract class SpendSummaryState with _$SpendSummaryState {
  const factory SpendSummaryState({
    @Default(false) bool isLoading,
    CampaignAnalyticsResponseEntity? spendSummary,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _SpendSummaryState;
}
