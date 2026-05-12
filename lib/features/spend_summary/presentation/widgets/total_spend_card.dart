import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

class TotalSpendCard extends StatelessWidget {
  const TotalSpendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        spacing: 10,
        children: <Widget>[
          Container(
            height: 41,
            width: 41,
            decoration: BoxDecoration(
              color: AppColors.success.withAlpha(20),
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Icon(
              Icons.north_east,
              color: AppColors.success,
              size: 30,
            ),
          ),

          ///
          /// TEXT
          ///
          const Column(
            crossAxisAlignment: .start,
            children: <Widget>[
              AppText(
                'Total Spend',
                variant: TextVariant.captionRegular,
                color: AppColors.labelText,
              ),
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  AppText('3,200', variant: TextVariant.headingMedium),
                  SizedBox(width: 4),
                  AppText(
                    'SAR',
                    variant: TextVariant.labelMedium,
                    color: AppColors.labelText,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
