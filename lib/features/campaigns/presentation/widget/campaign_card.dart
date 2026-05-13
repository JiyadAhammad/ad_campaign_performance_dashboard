import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';

///
/// CARD
///
class CampaignCard extends StatelessWidget {
  const CampaignCard({super.key, required this.campaign});
  final CampaignModel campaign;

  @override
  Widget build(BuildContext context) {
    final bool isActive = campaign.status == 'Active';
    final bool isPaused = campaign.status == 'Paused';

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.darkCard,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: <Widget>[
          ///
          /// HEADER
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                  color: AppColors.primary.withAlpha(20),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(campaign.icon, color: AppColors.primary),
              ),

              const SizedBox(width: 12),

              ///
              /// TITLE
              ///
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 2,
                  children: <Widget>[
                    AppText(campaign.title, variant: TextVariant.labelMedium),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withAlpha(20),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: AppText(
                        campaign.category,
                        variant: TextVariant.captionRegular,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),

              ///
              /// STATUS
              ///
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: isActive
                      ? AppColors.success.withAlpha(30)
                      : isPaused
                      ? AppColors.warning.withAlpha(30)
                      : AppColors.error.withAlpha(30),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(
                  spacing: 3,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: isActive
                          ? AppColors.success
                          : isPaused
                          ? AppColors.warning
                          : AppColors.error,
                    ),

                    AppText(
                      campaign.status,
                      variant: TextVariant.captionMedium,
                      color: isActive
                          ? AppColors.success
                          : isPaused
                          ? AppColors.warning
                          : AppColors.error,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.more_horiz),
            ],
          ),

          const SizedBox(height: 12),

          ///
          /// SPEND
          ///
          const AppText(
            'Total spend',
            variant: TextVariant.captionRegular,
            color: Colors.white60,
          ),

          const SizedBox(height: 4),

          Row(
            children: <Widget>[
              AppText(campaign.spend, variant: TextVariant.labelMedium),
              AppText(
                ' / ${campaign.totalSpend}',
                variant: TextVariant.labelMedium,
                color: Colors.white60,
              ),
            ],
          ),

          const SizedBox(height: 8),

          ///
          /// PROGRESS
          ///
          Row(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: LinearProgressIndicator(
                    value: campaign.progress,
                    minHeight: 6,
                    backgroundColor: AppColors.progressBg,
                    borderRadius: BorderRadius.circular(16),
                    valueColor: const AlwaysStoppedAnimation<Color?>(
                      AppColors.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              AppText(
                '${(campaign.progress * 100).toInt()}%',
                variant: TextVariant.captionMedium,
              ),
            ],
          ),

          const SizedBox(height: 18),

          ///
          /// STATS
          ///
          Row(
            spacing: 10,
            children: <Widget>[
              Expanded(
                child: _StatCard(
                  icon: Icons.remove_red_eye_outlined,
                  value: campaign.impressions,
                  label: 'Impressions',
                ),
              ),

              Expanded(
                child: _StatCard(
                  icon: Icons.ads_click_outlined,
                  value: campaign.clicks,
                  label: 'Clicks',
                ),
              ),

              Expanded(
                child: _StatCard(
                  icon: Icons.trending_up,
                  value: campaign.ctr,
                  label: 'CTR',
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          ///
          /// FOOTER
          ///
          Row(
            children: <Widget>[
              Expanded(
                child: _BottomInfo(
                  icon: Icons.calendar_today_outlined,
                  title: 'Start date',
                  value: campaign.startDate,
                ),
              ),
              Expanded(
                child: _BottomInfo(
                  icon: Icons.public,
                  title: 'Audience',
                  value: campaign.audience,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        spacing: 2,
        children: <Widget>[
          Icon(icon, size: 18, color: AppColors.primary),

          AppText(value, variant: TextVariant.labelMedium),

          AppText(label, variant: TextVariant.captionRegular),
        ],
      ),
    );
  }
}

class _BottomInfo extends StatelessWidget {
  const _BottomInfo({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      children: <Widget>[
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 3),
        Column(
          spacing: 2,
          crossAxisAlignment: .start,
          children: <Widget>[
            AppText(title, variant: TextVariant.captionRegular),
            AppText(value, variant: TextVariant.labelMedium),
          ],
        ),
      ],
    );
  }
}
