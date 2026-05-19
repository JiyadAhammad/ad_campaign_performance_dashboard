import '../../../../core/utils/typedef.dart';
import '../entity/spend_summary_entity.dart';

abstract class ISpendSummaryRepository {
  ResultFuture<CampaignAnalyticsResponseEntity> getSpendSummary();
}
