part of 'campaign_bloc.dart';

@freezed
abstract class CampaignState with _$CampaignState {
  const factory CampaignState({
    @Default(false) bool isLoading,
    @Default(<CampaignEntity>[]) List<CampaignEntity> campaigns,
    @Default(<CampaignEntity>[]) List<CampaignEntity> filteredCampaigns,

    @Default(CampaignFilter.all) CampaignFilter selectedFilter,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _CampaignState;
}
