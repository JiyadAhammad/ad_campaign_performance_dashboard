import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/anomaly_detect_entity.dart';
import '../bloc/anomaly_alert_bloc.dart';
import '../widgets/alert_card.dart';
import '../widgets/monitoring_card.dart';
import '../widgets/notification_toggle_card.dart';

class AnomalyAlertsScreen extends StatelessWidget {
  const AnomalyAlertsScreen({super.key});

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
            BlocBuilder<AnomalyAlertBloc, AnomalyAlertState>(
              builder: (BuildContext context, AnomalyAlertState state) {
                if (state.isLoading) {
                  return const CircularProgressIndicator.adaptive();
                }
                if (state.isError) {
                  return Center(child: AppText('${state.errorMessage}'));
                }

                // final List<LiveCampaignMetricsEntity> liveMetrics =
                //     state.liveCampaignMetricsEntity;
                final List<AnomalyEntity> anomalies = state.anomalyEntity;

                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: anomalies.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 6),
                  itemBuilder: (BuildContext context, int index) {
                    return AlertCard(alert: anomalies[index]);
                  },
                );
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
