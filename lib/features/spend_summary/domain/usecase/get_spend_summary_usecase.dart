import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entity/spend_summary_entity.dart';
import '../repository/i_spend_summary_repository.dart';

class GetSpendSummaryUseCase
    implements
        UseCase<ResultFuture<CampaignAnalyticsResponseEntity>, NoParams> {
  GetSpendSummaryUseCase({required this.repository});
  final ISpendSummaryRepository repository;

  @override
  ResultFuture<CampaignAnalyticsResponseEntity> call(NoParams params) {
    return repository.getSpendSummary();
  }
}
