import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

class NotificationToggleCard extends StatefulWidget {
  const NotificationToggleCard({super.key});

  @override
  State<NotificationToggleCard> createState() => _NotificationToggleCardState();
}

class _NotificationToggleCardState extends State<NotificationToggleCard> {
  bool enabled = true;

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
              Icons.notifications_active_outlined,
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
                  'Enable Push Notifications',
                  variant: TextVariant.labelMedium,
                ),
                SizedBox(height: 4),
                AppText(
                  'Get notified instantly when a new anomaly is detected.',
                  variant: TextVariant.captionRegular,
                ),
              ],
            ),
          ),

          ///
          /// SWITCH
          ///
          Switch(
            value: enabled,
            activeTrackColor: AppColors.primary,
            onChanged: (bool value) {
              setState(() {
                enabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
