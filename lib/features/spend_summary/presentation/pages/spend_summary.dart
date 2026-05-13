import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../data/model/sample_model.dart';
import '../widgets/date_range_card.dart';
import '../widgets/spend_channel_card.dart';
import '../widgets/top_campaign_card.dart';
import '../widgets/total_spend_card.dart';

class SpendSummaryScreen extends StatelessWidget {
  const SpendSummaryScreen({super.key});

  static const List<ChannelModel> channels = <ChannelModel>[
    ChannelModel(title: 'Search', percentage: 40, color: AppColors.primary),
    ChannelModel(title: 'Social', percentage: 35, color: AppColors.blue),
    ChannelModel(title: 'Display', percentage: 25, color: AppColors.purple),
  ];

  static const List<TopCampaignModel> campaigns = <TopCampaignModel>[
    TopCampaignModel(
      rank: 1,
      title: 'Summer Collection',
      ctr: '3.2%',
      icon: Icons.campaign_outlined,
    ),
    TopCampaignModel(
      rank: 2,
      title: 'Ramadan Offers',
      ctr: '2.9%',
      icon: Icons.card_giftcard,
    ),
    TopCampaignModel(
      rank: 3,
      title: 'Winter Sale',
      ctr: '2.5%',
      icon: Icons.shopping_cart_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(title: 'Spend Summary'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          spacing: 12,
          children: <Widget>[
            ///
            /// TOTAL SPEND
            ///
            TotalSpendCard(),

            ///
            /// CHANNELS
            ///
            SpendByChannelCard(channels: channels),

            ///
            /// TOP CAMPAIGNS
            ///
            TopCampaignsCard(campaigns: campaigns),

            ///
            /// DATE RANGE
            ///
            DateRangeCard(),
          ],
        ),
      ),
    );
  }
}
