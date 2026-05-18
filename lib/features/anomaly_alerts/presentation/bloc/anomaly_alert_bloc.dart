import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/anomaly_detect_entity.dart';
import '../../domain/entity/live_campaign_alert_entity.dart';
import '../../domain/usecase/get_anomaly_detect_usecase.dart';
import '../../domain/usecase/get_live_metric_alert_usecase.dart';

part 'anomaly_alert_event.dart';
part 'anomaly_alert_state.dart';
part 'anomaly_alert_bloc.freezed.dart';

class AnomalyAlertBloc extends Bloc<AnomalyAlertEvent, AnomalyAlertState> {
  AnomalyAlertBloc({
    required this.getLiveMetricAlertUseCase,
    required this.getAnomalyDetectUseCase,
  }) : super(const _AnomalyAlertState()) {
    on<_GetLiveMetricAlert>(_onGetLiveMetricAlert);
    on<_GetAnomalyDetect>(_onGetAnomalyDetect);
  }

  final GetLiveMetricAlertUseCase getLiveMetricAlertUseCase;
  final GetAnomalyDetectUseCase getAnomalyDetectUseCase;

  Future<void> _onGetLiveMetricAlert(
    _GetLiveMetricAlert event,
    Emitter<AnomalyAlertState> emit,
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

  FutureOr<void> _onGetAnomalyDetect(
    _GetAnomalyDetect event,
    Emitter<AnomalyAlertState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, AnomalyDetectResponseEntity> result =
        await getAnomalyDetectUseCase(NoParams());

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
      (AnomalyDetectResponseEntity anomalyDetectResponseEntity) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Anomaly detect fetched Successfully',
            anomalyEntity: anomalyDetectResponseEntity.anomalies,
          ),
        );
      },
    );
  }
}
