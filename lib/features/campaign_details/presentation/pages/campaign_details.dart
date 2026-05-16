import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/number_extension.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/campaign_details_entity.dart';
import '../../domain/entity/campaign_details_history_entity.dart';
import '../../domain/entity/campaign_forecast_entity.dart';
import '../bloc/campaign_details_bloc.dart';
import '../widget/chart_card.dart';
import '../widget/metric_card.dart';
import '../widget/recommendation_card.dart';
import '../widget/states.dart';

class CampaignDetailScreen extends StatefulWidget {
  const CampaignDetailScreen({
    super.key,
    required this.campaignId,
    required this.campaignName,
    required this.campaignStatus,
    required this.campaignType,
  });

  final String campaignId;
  final String campaignName;
  final String campaignStatus;
  final String campaignType;

  @override
  State<CampaignDetailScreen> createState() => _CampaignDetailScreenState();
}

class _CampaignDetailScreenState extends State<CampaignDetailScreen> {
  List<double> generateForecast() {
    return <double>[4.2, 4.4, 4.6, 4.5, 4.8, 5.0, 5.2];
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CampaignDetailsBloc>().add(
        CampaignDetailsEvent.getCampaignDetails(campaignId: widget.campaignId),
      );
      context.read<CampaignDetailsBloc>().add(
        CampaignDetailsEvent.getCampaignDetailsHistory(
          campaignId: widget.campaignId,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        titleWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppText(widget.campaignName, variant: TextVariant.labelMedium),

            const SizedBox(height: 4),

            Row(
              children: <Widget>[
                _AppBarTag(title: widget.campaignStatus, color: Colors.green),

                const SizedBox(width: 8),

                _AppBarTag(
                  title: widget.campaignType,
                  color: AppColors.primary,
                ),
              ],
            ),
          ],
        ),
        actions: const <Widget>[Icon(Icons.calendar_today_outlined, size: 18)],
      ),
      body: BlocBuilder<CampaignDetailsBloc, CampaignDetailsState>(
        builder: (BuildContext context, CampaignDetailsState state) {
          if (state.isLoading) {
            return const CircularProgressIndicator.adaptive();
          }
          if (state.isError) {
            return Center(child: AppText('${state.errorMessage}'));
          }
          if (state.campaignDetailsEntity == null ||
              state.campaignDetailsHistoryEntity == null ||
              state.campaignForecastEntity == null) {
            return const Center(child: AppText('Something went wrong'));
          }

          final CampaignDetailEntity campaign = state.campaignDetailsEntity!;
          final CampaignDetailsHistoryEntity history =
              state.campaignDetailsHistoryEntity!;
          final CampaignForecastResponseEntity forecast =
              state.campaignForecastEntity!;

          return ListView(
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
                    value: campaign.impressions.toBudgetFormat(),
                    label: 'Impressions',
                  ),

                  MetricCard(
                    icon: Icons.ads_click_outlined,
                    value: campaign.clicks.toBudgetFormat(),
                    label: 'Clicks',
                  ),

                  MetricCard(
                    icon: Icons.trending_up,
                    value: campaign.ctr.toBudgetFormat(),
                    label: 'CTR',
                  ),

                  MetricCard(
                    icon: Icons.account_balance_wallet_outlined,
                    value: '${campaign.spend} SAR',
                    label: 'Total spend',
                  ),
                ],
              ),

              const SizedBox(height: 12),

              ///
              /// CHART CARD
              ///
              ForecastChartCard(
                history: history.history,
                forecast: generateForecast(),
              ),

              const SizedBox(height: 12),

              ///
              /// RECOMMENDATION
              ///
              RecommendationCard(recommendationEntity: forecast.recommendation),

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
          );
        },
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
