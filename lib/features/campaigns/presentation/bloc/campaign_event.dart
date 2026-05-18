part of 'campaign_bloc.dart';

enum CampaignFilter { all, active, paused }

@freezed
class CampaignEvent with _$CampaignEvent {
  const factory CampaignEvent.getCampaigns() = _GetCampaigns;
  const factory CampaignEvent.filterCampaigns(CampaignFilter filter) =
      _FilterCampaigns;
}
