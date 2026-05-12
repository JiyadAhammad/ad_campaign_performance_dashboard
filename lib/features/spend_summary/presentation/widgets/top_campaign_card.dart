import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';

class TopCampaignsCard extends StatelessWidget {
  const TopCampaignsCard({super.key, required this.campaigns});
  final List<TopCampaignModel> campaigns;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppText('Top 3 Campaigns by CTR'),

          const SizedBox(height: 12),

          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: campaigns.length,
            separatorBuilder: (_, __) => const Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Divider(color: Colors.white24),
            ),
            itemBuilder: (BuildContext context, int index) {
              final TopCampaignModel campaign = campaigns[index];

              return TopCampaignTile(campaign: campaign);
            },
          ),
        ],
      ),
    );
  }
}

class TopCampaignTile extends StatelessWidget {
  const TopCampaignTile({super.key, required this.campaign});
  final TopCampaignModel campaign;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ///
        /// RANK
        ///
        Container(
          height: 15,
          width: 15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(20),
            borderRadius: BorderRadius.circular(2),
          ),
          child: AppText(
            '${campaign.rank}',
            variant: TextVariant.labelMedium,
            color: AppColors.primary,
          ),
        ),

        const SizedBox(width: 8),

        ///
        /// ICON
        ///
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(20),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(campaign.icon, color: AppColors.primary),
        ),

        const SizedBox(width: 8),

        ///
        /// TITLE
        ///
        Expanded(
          child: AppText(campaign.title, variant: TextVariant.labelSmall),
        ),

        ///
        /// CTR
        ///
        Row(
          children: <Widget>[
            AppText(
              campaign.ctr,
              variant: TextVariant.labelMedium,
              color: AppColors.success,
            ),
            const SizedBox(width: 2),
            const Icon(Icons.north_east, color: AppColors.success, size: 18),
          ],
        ),
      ],
    );
  }
}
