import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';
import '../widgets/alert_card.dart';
import '../widgets/monitoring_card.dart';
import '../widgets/notification_toggle_card.dart';

class AnomalyAlertsScreen extends StatelessWidget {
  const AnomalyAlertsScreen({super.key});

  static const List<AlertModel> alerts = <AlertModel>[
    AlertModel(
      type: 'Spend Spike',
      title: 'Summer Collection Awareness',
      time: '2m ago',
      description: 'Spend is 72% higher than usual',
      spend: '5,600 SAR',
      expected: '3,250 SAR',
      change: '+72%',
      isPositive: true,
      accentColor: Color(0xFFFF6464),
      icon: Icons.trending_up,
    ),
    AlertModel(
      type: 'CTR Drop',
      title: 'Ramadan Offers Campaign',
      time: '5m ago',
      description: 'Spend is -38% higher than usual',
      spend: '5,400 SAR',
      expected: '3,000 SAR',
      change: '-38%',
      isPositive: false,
      accentColor: Color(0xFFFFB020),
      icon: Icons.south_east,
    ),
    AlertModel(
      type: 'Spend Spike',
      title: 'Winter Sale Conversion',
      time: '10m ago',
      description: 'Spend is 55% higher than usual',
      spend: '4,200 SAR',
      expected: '2,700 SAR',
      change: '+55%',
      isPositive: true,
      accentColor: Color(0xFFFF6464),
      icon: Icons.trending_up,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const CustomAppBar(title: 'Anomaly Alerts'),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(14),
          children: <Widget>[
            ///
            /// LIVE MONITORING CARD
            ///
            const MonitoringCard(),

            const SizedBox(height: 12),

            ///
            /// TITLE
            ///
            const AppText('Recent Anomalies'),

            const SizedBox(height: 6),

            ///
            /// ALERTS LIST
            ///
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: alerts.length,
              separatorBuilder: (_, __) => const SizedBox(height: 6),
              itemBuilder: (BuildContext context, int index) {
                return AlertCard(alert: alerts[index]);
              },
            ),

            const SizedBox(height: 12),

            ///
            /// NOTIFICATION CARD
            ///
            const NotificationToggleCard(),
          ],
        ),
      ),
    );
  }
}
