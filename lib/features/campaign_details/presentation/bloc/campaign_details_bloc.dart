import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entity/campaign_details_entity.dart';
import '../../domain/entity/campaign_details_history_entity.dart';
import '../../domain/entity/campaign_forecast_entity.dart';
import '../../domain/usecase/get_campaign_details_history_usecase.dart';
import '../../domain/usecase/get_campaign_details_usecase.dart';
import '../../domain/usecase/get_campaign_forecast_usecase.dart';

part 'campaign_details_event.dart';
part 'campaign_details_state.dart';
part 'campaign_details_bloc.freezed.dart';

class CampaignDetailsBloc
    extends Bloc<CampaignDetailsEvent, CampaignDetailsState> {
  CampaignDetailsBloc({
    required this.getCampaignDetailsUseCase,
    required this.getCampaignDetailsHistoryUseCase,
    required this.getCampaignForecastUseCase,
  }) : super(const _CampaignDetailsState()) {
    on<_GetCampaignDetails>(_onGetCampaignDetails);
    on<_GetCampaignDetailsHistory>(_onGetCampaignDetailsHistory);
    on<_GetCampaignForecast>(_onGetCampaignForecast);
  }

  final GetCampaignDetailsUseCase getCampaignDetailsUseCase;
  final GetCampaignDetailsHistoryUseCase getCampaignDetailsHistoryUseCase;
  final GetCampaignForecastUseCase getCampaignForecastUseCase;

  Future<void> _onGetCampaignDetails(
    _GetCampaignDetails event,
    Emitter<CampaignDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, CampaignDetailResponseEntity> result =
        await getCampaignDetailsUseCase(
          CampaignDetailsRequestParam(campaignId: event.campaignId),
        );

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
      (CampaignDetailResponseEntity campaignDetailsResponseEntity) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Campaign Details fetched Successfully',
            campaignDetailsEntity: campaignDetailsResponseEntity.campaign,
          ),
        );
      },
    );
  }

  FutureOr<void> _onGetCampaignDetailsHistory(
    _GetCampaignDetailsHistory event,
    Emitter<CampaignDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, CampaignDetailsHistoryEntity> result =
        await getCampaignDetailsHistoryUseCase(
          CampaignDetailsHistoryRequestParam(campaignId: event.campaignId),
        );

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
      (CampaignDetailsHistoryEntity campaignDetailsHistoryResponseEntity) {
        add(
          CampaignDetailsEvent.getCampaignForecast(
            campaignId: event.campaignId,
            horizonDays: 7,
            campaignHistory: campaignDetailsHistoryResponseEntity.history,
          ),
        );
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Campaign Details history fetched Successfully',
            campaignDetailsHistoryEntity: campaignDetailsHistoryResponseEntity,
          ),
        );
      },
    );
  }

  FutureOr<void> _onGetCampaignForecast(
    _GetCampaignForecast event,
    Emitter<CampaignDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, CampaignForecastResponseEntity> result =
        await getCampaignForecastUseCase(
          CampaignForecastRequestParam(
            campaignId: event.campaignId,
            horizonDays: event.horizonDays,
            campaignHistory: event.campaignHistory,
          ),
        );

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
      (CampaignForecastResponseEntity campaignForecastEntity) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Campaign forecast fetched Successfully',
            campaignForecastEntity: campaignForecastEntity,
          ),
        );
      },
    );
  }
}
