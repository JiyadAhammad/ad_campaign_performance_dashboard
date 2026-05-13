import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Expanded(
              child: Column(
                spacing: 2,
                crossAxisAlignment: .start,
                children: <Widget>[
                  AppText(
                    'Budget Recommendation',
                    variant: TextVariant.captionMedium,
                    color: AppColors.success,
                  ),

                  AppText(
                    'CTR is predicted to increase by 12%',
                    variant: TextVariant.labelMedium,
                  ),

                  AppText(
                    'Consider increasing budget to maximize results',
                    variant: TextVariant.captionRegular,
                  ),
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
