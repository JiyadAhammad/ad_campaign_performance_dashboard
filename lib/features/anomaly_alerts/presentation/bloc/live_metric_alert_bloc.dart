import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/live_campaign_alert_entity.dart';
import '../../domain/usecase/get_live_metric_alert_usecase.dart';

part 'live_metric_alert_event.dart';
part 'live_metric_alert_state.dart';
part 'live_metric_alert_bloc.freezed.dart';

class LiveMetricAlertBloc
    extends Bloc<LiveMetricAlertEvent, LiveMetricAlertState> {
  LiveMetricAlertBloc({required this.getLiveMetricAlertUseCase})
    : super(const _LiveMetricAlertState()) {
    on<_GetLiveMetricAlert>(_onGetLiveMetricAlert);
  }

  final GetLiveMetricAlertUseCase getLiveMetricAlertUseCase;

  Future<void> _onGetLiveMetricAlert(
    _GetLiveMetricAlert event,
    Emitter<LiveMetricAlertState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, LiveCampaignMetricsResponseEntity> result =
        await getLiveMetricAlertUseCase(NoParams());

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
      (LiveCampaignMetricsResponseEntity liveCampaignMetricsEntity) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Live metrics fetched Successfully',
            liveCampaignMetricsEntity: liveCampaignMetricsEntity.campaigns,
          ),
        );
      },
    );
  }
}
