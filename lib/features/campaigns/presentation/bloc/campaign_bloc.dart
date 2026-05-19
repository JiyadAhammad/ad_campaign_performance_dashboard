import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/campaign_entity.dart';
import '../../domain/usecase/get_campaigns_usecase.dart';

part 'campaign_event.dart';
part 'campaign_state.dart';
part 'campaign_bloc.freezed.dart';

class CampaignBloc extends Bloc<CampaignEvent, CampaignState> {
  CampaignBloc({required this.getCampaignsUseCase})
    : super(const _CampaignState()) {
    on<_GetCampaigns>(_onGetCampaigns);
    on<_FilterCampaigns>(_onFilterCampaigns);
  }

  final GetCampaignsUseCase getCampaignsUseCase;

  Future<void> _onGetCampaigns(
    _GetCampaigns event,
    Emitter<CampaignState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, List<CampaignEntity>> result =
        await getCampaignsUseCase(NoParams());

    result.fold(
      (Failure failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
            errorMessage: failure.message,
          ),
        );
      },
      (List<CampaignEntity> campaigns) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Campaign fetched Successfully',
            campaigns: campaigns,
            filteredCampaigns: campaigns,
          ),
        );
      },
    );
  }

  void _onFilterCampaigns(_FilterCampaigns event, Emitter<CampaignState> emit) {
    List<CampaignEntity> filtered = <CampaignEntity>[];

    switch (event.filter) {
      case CampaignFilter.all:
        filtered = state.campaigns;
        break;

      case CampaignFilter.active:
        filtered = state.campaigns
            .where((CampaignEntity e) => e.status == CampaignStatus.Active)
            .toList();
        break;

      case CampaignFilter.paused:
        filtered = state.campaigns
            .where((CampaignEntity e) => e.status == CampaignStatus.Paused)
            .toList();
        break;
    }

    emit(
      state.copyWith(selectedFilter: event.filter, filteredCampaigns: filtered),
    );
  }
}
