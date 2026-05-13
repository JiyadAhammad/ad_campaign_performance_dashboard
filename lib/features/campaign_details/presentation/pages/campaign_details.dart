import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';
import '../widget/chart_card.dart';
import '../widget/metric_card.dart';
import '../widget/recommendation_card.dart';
import '../widget/states.dart';

///
/// SAMPLE MOCK DATA
///
const CampaignDetailResponse mockCampaign = CampaignDetailResponse(
  campaign: CampaignModel(
    id: 'camp_001',
    name: 'Winter Sale Conversion',
    status: 'Active',
    type: 'Conversion',
    impressions: 150000,
    clicks: 6200,
    ctr: 2.48,
    totalSpend: 7800,
  ),

  ///
  /// 30 DAYS HISTORY
  ///
  history: <DailyMetric>[
    DailyMetric(date: '01 Jun', ctr: 2.8),
    DailyMetric(date: '02 Jun', ctr: 2.5),
    DailyMetric(date: '03 Jun', ctr: 3.2),
    DailyMetric(date: '04 Jun', ctr: 2.9),
    DailyMetric(date: '05 Jun', ctr: 3.8),
    DailyMetric(date: '06 Jun', ctr: 3.1),
    DailyMetric(date: '07 Jun', ctr: 4.2),
    DailyMetric(date: '08 Jun', ctr: 3.5),
    DailyMetric(date: '09 Jun', ctr: 2.9),
    DailyMetric(date: '10 Jun', ctr: 3.3),
    DailyMetric(date: '11 Jun', ctr: 3.7),
    DailyMetric(date: '12 Jun', ctr: 3.4),
    DailyMetric(date: '13 Jun', ctr: 3.0),
    DailyMetric(date: '14 Jun', ctr: 4.0),
    DailyMetric(date: '15 Jun', ctr: 3.2),
    DailyMetric(date: '16 Jun', ctr: 3.6),
    DailyMetric(date: '17 Jun', ctr: 4.3),
    DailyMetric(date: '18 Jun', ctr: 4.0),
    DailyMetric(date: '19 Jun', ctr: 3.9),
    DailyMetric(date: '20 Jun', ctr: 4.1),
    DailyMetric(date: '21 Jun', ctr: 4.4),
    DailyMetric(date: '22 Jun', ctr: 4.5),
    DailyMetric(date: '23 Jun', ctr: 4.2),
    DailyMetric(date: '24 Jun', ctr: 3.8),
    DailyMetric(date: '25 Jun', ctr: 3.6),
    DailyMetric(date: '26 Jun', ctr: 3.9),
    DailyMetric(date: '27 Jun', ctr: 4.0),
    DailyMetric(date: '28 Jun', ctr: 4.1),
    DailyMetric(date: '29 Jun', ctr: 3.5),
    DailyMetric(date: '30 Jun', ctr: 4.0),
  ],
);

///
/// SCREEN
///
class CampaignDetailScreen extends StatelessWidget {
  const CampaignDetailScreen({super.key});

  ///
  /// GENERATED FORECAST
  ///
  List<double> generateForecast() {
    return <double>[4.2, 4.4, 4.6, 4.5, 4.8, 5.0, 5.2];
  }

  @override
  Widget build(BuildContext context) {
    final CampaignModel campaign = mockCampaign.campaign;

    final List<DailyMetric> history = mockCampaign.history;

    final List<double> forecast = generateForecast();

    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        titleWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppText(campaign.name, variant: TextVariant.labelMedium),

            const SizedBox(height: 4),

            Row(
              children: <Widget>[
                _AppBarTag(title: campaign.status, color: Colors.green),

                const SizedBox(width: 8),

                _AppBarTag(title: campaign.type, color: AppColors.primary),
              ],
            ),
          ],
        ),
        actions: const <Widget>[Icon(Icons.calendar_today_outlined, size: 18)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: <Widget>[
          ///
          /// METRICS
          ///
          Row(
            spacing: 4,
            children: <Widget>[
              MetricCard(
                icon: Icons.remove_red_eye_outlined,
                value: '${campaign.impressions ~/ 1000}K',
                label: 'Impressions',
              ),

              MetricCard(
                icon: Icons.ads_click_outlined,
                value: '${campaign.clicks / 1000}K',
                label: 'Clicks',
              ),

              MetricCard(
                icon: Icons.trending_up,
                value: '${campaign.ctr}%',
                label: 'CTR',
              ),

              MetricCard(
                icon: Icons.account_balance_wallet_outlined,
                value: '${campaign.totalSpend.toInt()} SAR',
                label: 'Total spend',
              ),
            ],
          ),

          const SizedBox(height: 12),

          ///
          /// CHART CARD
          ///
          ForecastChartCard(history: history, forecast: forecast),

          const SizedBox(height: 12),

          ///
          /// RECOMMENDATION
          ///
          const RecommendationCard(),

          const SizedBox(height: 20),

          ///
          /// STATES
          ///
          const AppText('States'),

          const SizedBox(height: 14),

          const Row(
            spacing: 2,
            children: <Widget>[
              Expanded(child: MiniLoadingState()),

              Expanded(child: MiniEmptyState()),

              Expanded(child: MiniErrorState()),
            ],
          ),
        ],
      ),
    );
  }
}

class _AppBarTag extends StatelessWidget {
  const _AppBarTag({required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(6),
      ),
      child: AppText(title, variant: TextVariant.captionMedium, color: color),
    );
  }
}
