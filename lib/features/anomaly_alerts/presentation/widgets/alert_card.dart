import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';

class AlertCard extends StatelessWidget {
  const AlertCard({super.key, required this.alert});
  final AlertModel alert;

  @override
  Widget build(BuildContext context) {
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
                  color: alert.accentColor.withAlpha(20),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(alert.icon, color: alert.accentColor, size: 30),
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
                        color: alert.accentColor.withAlpha(20),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: AppText(
                        alert.type,
                        variant: TextVariant.captionRegular,
                        color: alert.accentColor,
                      ),
                    ),

                    AppText(alert.title, variant: TextVariant.labelMedium),

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
              AppText(alert.time, variant: TextVariant.captionRegular),
            ],
          ),

          ///
          /// DESCRIPTION
          ///
          AppText(alert.description, variant: TextVariant.labelMedium),

          ///
          /// METRICS
          ///
          Row(
            spacing: 10,
            children: <Widget>[
              Expanded(
                child: _MetricCard(
                  icon: Icons.north_east,
                  value: alert.spend,
                  label: 'Spend',
                  color: alert.accentColor,
                ),
              ),

              Expanded(
                child: _MetricCard(
                  icon: Icons.trending_up,
                  value: alert.expected,
                  label: 'Expected',
                  color: AppColors.primary,
                ),
              ),

              Expanded(
                child: _MetricCard(
                  icon: alert.isPositive ? Icons.north_east : Icons.south_east,
                  value: alert.change,
                  label: 'Change',
                  color: alert.accentColor,
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
