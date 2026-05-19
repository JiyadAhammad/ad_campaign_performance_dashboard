import 'package:flutter/material.dart';

import '../../../../core/extensions/date_extension.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/anomaly_detect_entity.dart';

class AlertCard extends StatelessWidget {
  const AlertCard({super.key, required this.alert});
  final AnomalyEntity alert;

  @override
  Widget build(BuildContext context) {
    final Color typeColor = alert.type.isSpendSpike
        ? AppColors.error
        : AppColors.warning;
    final IconData typeIcon = alert.type.isSpendSpike
        ? Icons.trending_up
        : Icons.trending_down;
    return AppCard(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 12,
        crossAxisAlignment: .start,
        children: <Widget>[
          ///
          /// TOP SECTION
          ///
          Row(
            crossAxisAlignment: .start,
            children: <Widget>[
              ///
              /// ICON
              ///
              Container(
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                  color: typeColor.withAlpha(20),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(typeIcon, color: typeColor, size: 30),
              ),

              const SizedBox(width: 6),

              ///
              /// TITLE
              ///
              Expanded(
                child: Column(
                  spacing: 3,
                  crossAxisAlignment: .start,
                  children: <Widget>[
                    ///
                    /// CHIP
                    ///
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: typeColor.withAlpha(20),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: AppText(
                        alert.type.name,
                        variant: TextVariant.captionRegular,
                        color: typeColor,
                      ),
                    ),

                    AppText(
                      alert.campaignName,
                      variant: TextVariant.labelMedium,
                    ),

                    const AppText(
                      'Campaign',
                      variant: TextVariant.captionRegular,
                    ),
                  ],
                ),
              ),

              ///
              /// TIME
              ///
              AppText(
                alert.detectedAt.toTimeAgo(),
                variant: TextVariant.captionRegular,
              ),
            ],
          ),

          ///
          /// DESCRIPTION
          ///
          AppText(alert.message, variant: TextVariant.labelMedium),

          ///
          /// METRICS
          ///
          Row(
            spacing: 10,
            children: <Widget>[
              Expanded(
                child: _MetricCard(
                  icon: Icons.trending_up,
                  value: '${alert.actualValue}',
                  label: 'Spend',
                  color: typeColor,
                ),
              ),

              Expanded(
                child: _MetricCard(
                  icon: Icons.data_exploration,
                  value: '${alert.expectedValue}',
                  label: 'Expected',
                  color: AppColors.primary,
                ),
              ),

              Expanded(
                child: _MetricCard(
                  icon: alert.deviationPercent.isNegative
                      ? Icons.north_east
                      : Icons.south_east,
                  value: '${alert.deviationPercent}',
                  label: 'Change',
                  color: typeColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///
/// METRIC CARD
///
class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: <Widget>[
          Icon(icon, color: color, size: 22),

          const SizedBox(height: 10),

          AppText(
            value,
            variant: TextVariant.labelMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 4),

          AppText(label, variant: TextVariant.captionRegular),
        ],
      ),
    );
  }
}
