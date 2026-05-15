import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/spend_summary_entity.dart';
import '../../domain/usecase/get_spend_summary_usecase.dart';

part 'spend_summary_event.dart';
part 'spend_summary_state.dart';
part 'spend_summary_bloc.freezed.dart';

class SpendSummaryBloc extends Bloc<SpendSummaryEvent, SpendSummaryState> {
  SpendSummaryBloc({required this.getSpendSummaryUseCase})
    : super(const _SpendSummaryState()) {
    on<_GetSpendSummary>(_onGetSpendSummary);
  }

  final GetSpendSummaryUseCase getSpendSummaryUseCase;

  Future<void> _onGetSpendSummary(
    _GetSpendSummary event,
    Emitter<SpendSummaryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, CampaignAnalyticsResponseEntity> result =
        await getSpendSummaryUseCase(NoParams());

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
      (CampaignAnalyticsResponseEntity spendSummary) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            successMessage: 'Spend Summary fetched Successfully',
            spendSummary: spendSummary,
          ),
        );
      },
    );
  }
}
