import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/campaign_forecast_entity.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key, required this.recommendationEntity});
  final ForecastRecommendationEntity recommendationEntity;

  @override
  Widget build(BuildContext context) {
    final List<String> messageParts = recommendationEntity.message.split('. ');
    final String title = '${messageParts.first}.';
    final String description = messageParts.skip(1).join('. ');
    return AppCard(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: .start,
          children: <Widget>[
            ///
            /// ICON
            ///
            Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                color: AppColors.success.withAlpha(20),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.north_east, color: AppColors.success),
            ),

            const SizedBox(width: 12),

            ///
            /// TEXT
            ///
            Expanded(
              child: Column(
                spacing: 2,
                crossAxisAlignment: .start,
                children: <Widget>[
                  const AppText(
                    'Budget Recommendation',
                    variant: TextVariant.captionMedium,
                    color: AppColors.success,
                  ),

                  AppText(title, variant: TextVariant.labelMedium),

                  AppText(description, variant: TextVariant.captionRegular),
                ],
              ),
            ),

            ///
            /// BUTTON
            ///
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.success.withAlpha(20),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const AppText(
                  'View Details',
                  variant: TextVariant.captionRegular,
                  color: AppColors.success,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
