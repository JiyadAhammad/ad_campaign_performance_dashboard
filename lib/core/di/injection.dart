import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/anomaly_alerts/anomaly_alerts_injection.dart';
import '../../features/campaign_details/campaign_details_injection.dart';
import '../../features/campaigns/campaign_injection.dart';
import '../../features/spend_summary/spend_summary_injection.dart';
import '../network/api_client.dart';

final GetIt sl = GetIt.instance;

Future<void> setupInjector() async {
  await _registerCore();
  await registerCampaignDependencies();
  await registerSpendSummaryDependencies();
  await registerCampaignDetailsDependencies();
  await registerAnomalyAlertDependencies();
}

Future<void> _registerCore() async {
  /// Api Client
  sl.registerLazySingleton<ApiClient>(() => ApiClient());

  /// Dio
  sl.registerLazySingleton<Dio>(() => sl<ApiClient>().dio);
}
