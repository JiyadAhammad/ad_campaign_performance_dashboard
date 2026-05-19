import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import 'core/di/injection.dart';
import 'core/environment/env.dart';
import 'core/route/app_router.dart';
import 'core/theme/theme.dart';
import 'features/anomaly_alerts/presentation/bloc/anomaly_alert_bloc.dart';
import 'features/campaigns/presentation/bloc/campaign_bloc.dart';
import 'features/spend_summary/presentation/bloc/spend_summary_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<CampaignBloc>(
          create: (_) =>
              sl<CampaignBloc>()..add(const CampaignEvent.getCampaigns()),
        ),
        BlocProvider<SpendSummaryBloc>(
          create: (_) =>
              sl<SpendSummaryBloc>()
                ..add(const SpendSummaryEvent.getSpendSummary()),
        ),
        BlocProvider<AnomalyAlertBloc>(
          create: (_) =>
              sl<AnomalyAlertBloc>()
                ..add(const AnomalyAlertEvent.getLiveMetricAlert()),
        ),
      ],
      child: const _MyApp(),
    );
  }
}

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier<ThemeMode>(
  ThemeMode.system,
);

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode mode, _) {
        return MaterialApp.router(
          title: Environment.current == AppEnvironment.dev
              ? 'Ad Campaign dev'
              : 'Ad Campaign',
          themeMode: mode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: appRouter,
        );
      },
    );
  }
}
