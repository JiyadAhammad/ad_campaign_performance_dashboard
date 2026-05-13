import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

class MonitoringCard extends StatelessWidget {
  const MonitoringCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: <Widget>[
          ///
          /// ICON
          ///
          Container(
            height: 41,
            width: 41,
            decoration: BoxDecoration(
              color: AppColors.primary.withAlpha(20),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.sensors_outlined,
              color: AppColors.primary,
              size: 32,
            ),
          ),

          const SizedBox(width: 10),

          ///
          /// TEXT
          ///
          const Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: <Widget>[
                AppText(
                  'Monitoring in real-time',
                  variant: TextVariant.labelMedium,
                ),
                SizedBox(height: 4),
                AppText(
                  'Polling Dds API every 30 seconds',
                  variant: TextVariant.captionRegular,
                ),
              ],
            ),
          ),

          ///
          /// LIVE STATUS
          ///
          const Row(
            children: <Widget>[
              CircleAvatar(radius: 4, backgroundColor: AppColors.success),
              SizedBox(width: 6),
              AppText(
                'Live',
                variant: TextVariant.labelMedium,
                color: AppColors.success,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
