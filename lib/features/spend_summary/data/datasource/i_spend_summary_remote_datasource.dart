import '../model/spend_summary_model.dart';

abstract interface class ISpendSummaryRemoteDatasource {
  /// Aggregated spend by channel + date
  Future<CampaignAnalyticsResponseModel> getSpendSummary();
}
