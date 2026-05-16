import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/campaign_details_history_entity.dart';

class ForecastChartCard extends StatelessWidget {
  const ForecastChartCard({
    super.key,
    required this.history,
    required this.forecast,
  });

  final List<CampaignHistoryEntity> history;
  final List<double> forecast;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ///
          /// HEADER
          ///
          Row(
            children: <Widget>[
              const AppText(
                'CTR Performance & Forecast',
                variant: TextVariant.labelMedium,
              ),

              const SizedBox(width: 6),

              Icon(
                Icons.info_outline,
                color: Colors.white.withOpacity(.5),
                size: 13,
              ),

              const Spacer(),

              ///
              /// DROPDOWN
              ///
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white10),
                ),
                child: const Row(
                  children: <Widget>[
                    AppText('30 Days', variant: TextVariant.captionRegular),
                    SizedBox(width: 4),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 15,
                      color: AppColors.labelText,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          ///
          /// LEGENDS
          ///
          Row(
            children: <Widget>[
              _legend('Historical (30 Days)'),

              const SizedBox(width: 15),

              _legend('Forecast (7 Days)'),
            ],
          ),

          const SizedBox(height: 8),

          const AppText('CTR (%)', variant: TextVariant.captionRegular),

          const SizedBox(height: 8),

          ///
          /// CHART
          ///
          SizedBox(height: 240, child: LineChart(_chartData())),
        ],
      ),
    );
  }

  Widget _legend(String title) {
    return Row(
      children: <Widget>[
        Container(height: 1, width: 15, color: AppColors.primary),
        const SizedBox(width: 6),
        AppText(title, variant: TextVariant.captionRegular),
      ],
    );
  }

  LineChartData _chartData() {
    ///
    /// HISTORY
    ///
    final List<FlSpot> historySpots = history.asMap().entries.map((
      MapEntry<int, CampaignHistoryEntity> e,
    ) {
      return FlSpot(e.key.toDouble(), e.value.ctr);
    }).toList();

    ///
    /// FORECAST
    ///
    final List<FlSpot> forecastSpots = forecast.asMap().entries.map((
      MapEntry<int, double> e,
    ) {
      return FlSpot((history.length + e.key).toDouble(), e.value);
    }).toList();

    return LineChartData(
      minY: 0,
      maxY: 6,

      ///
      /// GRID
      ///
      gridData: FlGridData(
        drawVerticalLine: false,
        horizontalInterval: 2,
        getDrawingHorizontalLine: (double value) {
          return const FlLine(color: Colors.white10, strokeWidth: 1);
        },
      ),

      ///
      /// BORDER
      ///
      borderData: FlBorderData(show: false),

      ///
      /// TITLES
      ///
      titlesData: FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),

        ///
        /// LEFT
        ///
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 2,
            reservedSize: 28,
            getTitlesWidget: (double value, TitleMeta meta) {
              return AppText(
                '${value.toInt()}%',
                variant: TextVariant.captionRegular,
              );
            },
          ),
        ),

        ///
        /// BOTTOM
        ///
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 7,
            getTitlesWidget: (double value, TitleMeta meta) {
              final List<String> labels = <String>[
                '02 Jun',
                '09 Jun',
                '23 Jun',
                '29 Jun',
                '03 July',
                '10 July',
              ];

              final int index = value.toInt() ~/ 7;

              if (index >= 0 && index < labels.length) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: AppText(
                    labels[index],
                    variant: TextVariant.captionRegular,
                  ),
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ),

      ///
      /// DIVIDER LINE
      ///
      extraLinesData: ExtraLinesData(
        verticalLines: <VerticalLine>[
          VerticalLine(
            x: history.length.toDouble(),
            color: Colors.white30,
            dashArray: <int>[5, 5],
            strokeWidth: 1,
          ),
        ],
      ),

      ///
      /// LINES
      ///
      lineBarsData: <LineChartBarData>[
        ///
        /// HISTORY LINE
        ///
        LineChartBarData(
          spots: historySpots,
          isCurved: true,
          color: AppColors.primary,
          barWidth: 3,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(),
        ),

        ///
        /// FORECAST LINE
        ///
        LineChartBarData(
          spots: forecastSpots,
          isCurved: true,
          color: AppColors.primary.withOpacity(.45),
          dashArray: <int>[8, 4],
          barWidth: 3,
          dotData: const FlDotData(show: false),

          ///
          /// CONFIDENCE BAND
          ///
          belowBarData: BarAreaData(
            show: true,
            color: AppColors.primary.withOpacity(.08),
          ),
        ),
      ],
    );
  }
}
