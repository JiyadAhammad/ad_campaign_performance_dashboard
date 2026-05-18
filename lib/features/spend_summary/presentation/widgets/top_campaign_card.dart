import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/spend_summary_entity.dart';

class TopCampaignsCard extends StatelessWidget {
  const TopCampaignsCard({super.key, required this.campaigns});
  final List<TopCampaignEntity> campaigns;

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
              final TopCampaignEntity campaign = campaigns[index];

              return _TopCampaignTile(campaign: campaign, rank: index);
            },
          ),
        ],
      ),
    );
  }
}

class _TopCampaignTile extends StatelessWidget {
  const _TopCampaignTile({required this.campaign, required this.rank});
  final TopCampaignEntity campaign;
  final int rank;

  @override
  Widget build(BuildContext context) {
    const List<IconData> icons = <IconData>[
      Icons.campaign_outlined,
      Icons.card_giftcard,
      Icons.shopping_cart_outlined,
    ];
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          'campaign-details',

          extra: <String, dynamic>{
            'campaignId': campaign.id,
            'campaignName': campaign.name,
          },
        );
      },
      child: Row(
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
              '${rank + 1}',
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
            child: Icon(icons[rank], color: AppColors.primary),
          ),

          const SizedBox(width: 8),

          ///
          /// TITLE
          ///
          Expanded(
            child: AppText(campaign.name, variant: TextVariant.labelSmall),
          ),

          ///
          /// CTR
          ///
          Row(
            children: <Widget>[
              AppText(
                '${campaign.ctr}',
                variant: TextVariant.labelMedium,
                color: AppColors.success,
              ),
              const SizedBox(width: 2),
              const Icon(Icons.north_east, color: AppColors.success, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}
