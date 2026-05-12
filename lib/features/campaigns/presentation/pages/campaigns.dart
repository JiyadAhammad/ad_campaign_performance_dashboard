import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';
import '../widget/campaign_card.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  static final List<CampaignModel> campaigns = <CampaignModel>[
    CampaignModel(
      title: 'Winter Sale\nConversion',
      category: 'Conversion',
      status: 'Active',
      spend: '7,800 SAR',
      totalSpend: '10,000 SAR',
      progress: 0.55,
      impressions: '250K',
      clicks: '6.2K',
      ctr: '2.48%',
      startDate: '02 Jan 2025',
      audience: 'All Users, KSA',
      icon: Icons.shopping_cart_outlined,
    ),
    CampaignModel(
      title: 'Ramadan Offers\nCampaign',
      category: 'Conversion',
      status: 'Paused',
      spend: '5,400 SAR',
      totalSpend: '8,000 SAR',
      progress: 0.47,
      impressions: '180K',
      clicks: '5.1K',
      ctr: '2.93%',
      startDate: '11 May 2025',
      audience: 'Families, GCC',
      icon: Icons.card_giftcard,
    ),
    CampaignModel(
      title: 'Summer Collection\nAwareness Campaign',
      category: 'Awareness',
      status: 'Ended',
      spend: '9,100 SAR',
      totalSpend: '12,000 SAR',
      progress: 0.76,
      impressions: '420K',
      clicks: '8.8K',
      ctr: '3.10%',
      startDate: '19 Jun 2025',
      audience: 'Young Adults',
      icon: Icons.campaign_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const CustomAppBar(title: 'Campaign List '),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          spacing: 12,
          children: <Widget>[
            ///
            /// SEARCH
            ///
            Container(
              height: 52,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A25),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(),
              ),
              child: const Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 12),
                  Expanded(
                    child: AppText(
                      'Search Campaigns...',
                      color: AppColors.labelText,
                    ),
                  ),
                  Icon(Icons.tune_rounded),
                ],
              ),
            ),

            ///
            /// FILTERS
            ///
            const Row(
              children: <Widget>[
                _FilterChip(title: 'All', selected: true),
                SizedBox(width: 10),
                _FilterChip(title: 'Active', selected: false),
                SizedBox(width: 10),
                _FilterChip(title: 'Paused', selected: false),
              ],
            ),

            ///
            /// LIST
            ///
            Expanded(
              child: ListView.builder(
                itemCount: campaigns.length,
                itemBuilder: (BuildContext context, int index) {
                  final CampaignModel campaign = campaigns[index];

                  return CampaignCard(campaign: campaign);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({required this.title, required this.selected});

  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF1D1D2B) : const Color(0xFF14141C),
        borderRadius: BorderRadius.circular(14),
      ),
      child: AppText(
        title,
        variant: TextVariant.labelMedium,
        color: selected ? Colors.white : Colors.white54,
      ),
    );
  }
}
