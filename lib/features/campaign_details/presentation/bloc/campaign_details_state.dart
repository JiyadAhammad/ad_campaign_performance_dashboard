part of 'campaign_details_bloc.dart';

@freezed
abstract class CampaignDetailsState with _$CampaignDetailsState {
  const factory CampaignDetailsState({
    @Default(false) bool isLoading,
    CampaignDetailEntity? campaignDetailsEntity,
    CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,
    CampaignForecastResponseEntity? campaignForecastEntity,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _CampaignDetailsState;
}
