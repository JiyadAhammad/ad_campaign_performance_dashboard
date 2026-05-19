import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/spend_summary_entity.dart';
import '../bloc/spend_summary_bloc.dart';
import '../widgets/date_range_card.dart';
import '../widgets/spend_channel_card.dart';
import '../widgets/spend_summary_shimmer.dart';
import '../widgets/top_campaign_card.dart';
import '../widgets/total_spend_card.dart';

class SpendSummaryScreen extends StatelessWidget {
  const SpendSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const CustomAppBar(title: 'Spend Summary'),
      body: BlocBuilder<SpendSummaryBloc, SpendSummaryState>(
        builder: (BuildContext context, SpendSummaryState state) {
          if (state.isLoading) {
            return const SpendSummaryShimmer();
          }
          if (state.isError) {
            return Center(child: AppText('${state.errorMessage}'));
          }
          if (state.spendSummary == null) {
            return const Center(
              child: AppText('Something went wrong\nPlease try again later'),
            );
          }
          final CampaignAnalyticsResponseEntity spendSummary =
              state.spendSummary!;

          final CampaignAnalyticsSummaryEntity summary = spendSummary.summary;

          return Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              spacing: 12,
              children: <Widget>[
                ///
                /// TOTAL SPEND
                ///
                TotalSpendCard(summary: summary),

                ///
                /// CHANNELS
                ///
                SpendByChannelCard(
                  channels: summary.byChannel,
                  totalSpend: summary.totalSpend,
                ),

                ///
                /// TOP CAMPAIGNS
                ///
                TopCampaignsCard(campaigns: summary.topCampaigns),

                ///
                /// DATE RANGE
                ///
                const DateRangeCard(),
              ],
            ),
          );
        },
      ),
    );
  }
}
