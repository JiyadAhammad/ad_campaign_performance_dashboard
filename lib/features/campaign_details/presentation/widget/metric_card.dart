import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text.dart';

class MetricCard extends StatelessWidget {
  const MetricCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 60,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.darkCard,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          spacing: 2,
          mainAxisAlignment: .center,
          children: <Widget>[
            Icon(icon, color: AppColors.primary, size: 15),

            const SizedBox(height: 4),

            AppText(
              value,
              textAlign: TextAlign.center,
              variant: TextVariant.labelMedium,
            ),

            AppText(label, variant: TextVariant.captionRegular),
          ],
        ),
      ),
    );
  }
}
