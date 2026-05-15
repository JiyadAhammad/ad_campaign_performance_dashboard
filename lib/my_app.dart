import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import 'core/di/injection.dart';
import 'core/environment/env.dart';
import 'core/theme/theme.dart';
import 'features/campaigns/presentation/bloc/campaign_bloc.dart';
import 'features/root_navigation/root_navigation.dart';

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
        return MaterialApp(
          title: Environment.current == AppEnvironment.dev
              ? 'Ad Campaign dev'
              : 'Ad Campaign',
          themeMode: mode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: RootNavigation(),
        );
      },
    );
  }
}
