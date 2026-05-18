import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/campaign_details/presentation/bloc/campaign_details_bloc.dart';
import '../../features/campaign_details/presentation/pages/campaign_details.dart';
import '../../features/root_navigation/root_navigation.dart';
import '../di/injection.dart';
import 'routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.rootNavigation,

  routes: <RouteBase>[
    ///
    /// DASHBOARD
    ///
    GoRoute(
      path: AppRoutes.rootNavigation,
      builder: (BuildContext context, GoRouterState state) {
        return RootNavigation();
      },
    ),

    ///
    /// CAMPAIGN DETAILS
    ///
    GoRoute(
      path: AppRoutes.campaignDetails,
      name: 'campaign-details',

      builder: (BuildContext context, GoRouterState state) {
        ///
        /// EXTRA
        ///
        final Map<String, dynamic> extra = state.extra! as Map<String, dynamic>;

        return BlocProvider<CampaignDetailsBloc>(
          create: (BuildContext context) => sl<CampaignDetailsBloc>(),
          child: CampaignDetailScreen(
            campaignId: extra['campaignId'] as String,
            campaignName: extra['campaignName'] as String,
          ),
        );
      },
    ),
  ],
);
