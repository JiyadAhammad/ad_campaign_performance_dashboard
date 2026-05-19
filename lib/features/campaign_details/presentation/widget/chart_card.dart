import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/campaign_details_history_entity.dart';
import '../../domain/entity/campaign_forecast_entity.dart';

class ForecastChartCard extends StatelessWidget {
  const ForecastChartCard({
    super.key,
    required this.history,
    required this.forecast,
  });

  final List<CampaignHistoryEntity> history;
  final List<CampaignForecastEntity> forecast;

  /// The chart is split into two EQUAL halves.
  /// We use the larger of history.length and forecast.length as the "half
  /// size", so both sections occupy the same number of x-slots.
  int get _halfSize =>
      history.length > forecast.length ? history.length : forecast.length;

  /// The divider sits exactly at the midpoint: halfSize - 1 (0-based last
  /// index of the left half).
  double get _dividerX => (_halfSize - 1).toDouble();

  /// Total x-axis span: two equal halves.
  double get _maxX => (_halfSize * 2 - 1).toDouble();

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
                color: Colors.white.withAlpha(50),
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
              _legend('Historical CTR'),
              const SizedBox(width: 15),
              _legend('Forecast CTR', isDashed: true),
            ],
          ),

          const SizedBox(height: 8),

          const AppText('CTR (%)', variant: TextVariant.captionRegular),

          const SizedBox(height: 12),

          ///
          /// ANNOTATION ROW — equal split, each half takes 50% of chart width.
          ///
          const Row(
            children: <Widget>[
              SizedBox(width: 32), // matches leftTitles reservedSize
              Expanded(
                child: _ChartTopLabel(
                  title: 'Historical (30 Days)',
                  isLeft: true,
                ),
              ),
              Expanded(
                child: _ChartTopLabel(
                  title: 'Forecast (7 Days)',
                  isLeft: false,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          ///
          /// CHART
          ///
          SizedBox(height: 240, child: LineChart(_chartData())),
        ],
      ),
    );
  }

  Widget _legend(String title, {bool isDashed = false}) {
    return Row(
      children: <Widget>[
        if (isDashed)
          Row(
            children: List<Widget>.generate(
              3,
              (int index) => Container(
                height: 2,
                width: 4,
                color: AppColors.primary,
                margin: const EdgeInsets.only(right: 2),
              ),
            ),
          )
        else
          Container(height: 2, width: 16, color: AppColors.primary),
        const SizedBox(width: 6),
        AppText(
          title,
          variant: TextVariant.captionRegular,
          color: AppColors.labelText,
        ),
      ],
    );
  }

  LineChartData _chartData() {
    // ── History spots ──────────────────────────────────────────────────────────
    // CTR values are stored as decimals (e.g. 0.031). Multiply by 100 so they
    // render correctly on the percentage Y-axis (e.g. 3.1%).
    // History occupies the LEFT half: x-slots 0 … (_halfSize - 1).
    // We spread history.length points evenly across _halfSize slots.
    final List<FlSpot> historySpots = <FlSpot>[];
    for (int i = 0; i < history.length; i++) {
      final double x =
          (_halfSize - 1) *
          i /
          (history.length - 1 == 0 ? 1 : history.length - 1);
      historySpots.add(FlSpot(x, history[i].ctr * 100));
    }

    // ── Forecast + bound spots ─────────────────────────────────────────────────
    // Forecast occupies the RIGHT half: x-slots _halfSize … (_maxX).
    // We spread forecast.length points evenly across _halfSize slots.
    final List<FlSpot> forecastSpots = <FlSpot>[];
    final List<FlSpot> upperBoundSpots = <FlSpot>[];
    final List<FlSpot> lowerBoundSpots = <FlSpot>[];

    // Bridge: connect seamlessly from the last history point at _dividerX.
    if (history.isNotEmpty && forecast.isNotEmpty) {
      final double bridgeY = history.last.ctr * 100;
      forecastSpots.add(FlSpot(_dividerX, bridgeY));
      upperBoundSpots.add(FlSpot(_dividerX, bridgeY));
      lowerBoundSpots.add(FlSpot(_dividerX, bridgeY));
    }

    for (int i = 0; i < forecast.length; i++) {
      final double x =
          _halfSize +
          (_halfSize - 1) *
              i /
              (forecast.length - 1 == 0 ? 1 : forecast.length - 1);
      forecastSpots.add(FlSpot(x, forecast[i].predictedCtr * 100));
      upperBoundSpots.add(FlSpot(x, forecast[i].upperBound * 100));
      lowerBoundSpots.add(FlSpot(x, forecast[i].lowerBound * 100));
    }

    // ── X-axis range ───────────────────────────────────────────────────────────
    final double maxX = _maxX;

    // ── Bottom-axis labels ─────────────────────────────────────────────────────
    // Six evenly-spaced labels across the full date range.
    const List<String> labels = <String>[
      '02 Jun',
      '09 Jun',
      '23 Jun',
      '29 Jun',
      '03 July',
      '10 July',
    ];

    // Interval so labels land at 0, maxX/5, 2*maxX/5 … maxX
    final double labelInterval = maxX / (labels.length - 1);

    // ── Y-axis range ───────────────────────────────────────────────────────────
    // Derive max from actual data (already ×100) and round up to the next
    // even integer so the chart has clean gridlines with a little headroom.
    final double dataMaxY = <double>[
      ...historySpots.map((FlSpot s) => s.y),
      ...upperBoundSpots.map((FlSpot s) => s.y),
    ].fold(0.0, (double a, double b) => a > b ? a : b);
    final double maxY = ((dataMaxY / 2).ceil() * 2 + 2).toDouble();

    return LineChartData(
      minX: 0,
      maxX: maxX,
      minY: 0,
      maxY: maxY,

      // ── Grid ────────────────────────────────────────────────────────────────
      gridData: FlGridData(
        drawVerticalLine: false,
        horizontalInterval: (maxY / 3).ceilToDouble(),
        getDrawingHorizontalLine: (_) =>
            const FlLine(color: Colors.white10, strokeWidth: 1),
      ),

      borderData: FlBorderData(show: false),

      // ── Titles ──────────────────────────────────────────────────────────────
      titlesData: FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            // Use maxY/3 so we always get ~3 gridlines regardless of scale
            interval: (maxY / 3).ceilToDouble(),
            reservedSize: 32,
            getTitlesWidget: (double value, TitleMeta meta) {
              if (value == 0) {
                return const SizedBox();
              }
              return Padding(
                padding: const EdgeInsets.only(right: 4),
                child: AppText(
                  '${value.toStringAsFixed(value % 1 == 0 ? 0 : 1)}%',
                  variant: TextVariant.captionRegular,
                ),
              );
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: labelInterval,
            getTitlesWidget: (double value, TitleMeta meta) {
              // Find the nearest label index
              final int index = (value / labelInterval).round();
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

      // ── Centre divider ───────────────────────────────────────────────────────
      // The vertical dashed line sits at the exact midpoint of the full range,
      // which equals _dividerX = (history.length + forecast.length - 1) / 2.
      extraLinesData: ExtraLinesData(
        verticalLines: <VerticalLine>[
          VerticalLine(
            x: _dividerX,
            color: Colors.white30,
            dashArray: <int>[5, 5],
            strokeWidth: 1,
          ),
        ],
      ),

      // ── Line bars ────────────────────────────────────────────────────────────
      lineBarsData: <LineChartBarData>[
        /// 0 — HISTORY LINE (solid, with gradient fill below)
        LineChartBarData(
          spots: historySpots,
          isCurved: true,
          color: AppColors.primary,
          barWidth: 1.5,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.primary.withAlpha(30),
                AppColors.primary.withAlpha(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),

        /// 1 — FORECAST LINE (dashed)
        LineChartBarData(
          spots: forecastSpots,
          isCurved: true,
          color: AppColors.primary,
          dashArray: <int>[5, 5],
          barWidth: 1.5,
          dotData: const FlDotData(show: false),
        ),

        /// 2 — UPPER BOUND (invisible line, used for betweenBarsData)
        LineChartBarData(
          spots: upperBoundSpots,
          isCurved: true,
          color: Colors.transparent,
          barWidth: 0,
          dotData: const FlDotData(show: false),
        ),

        /// 3 — LOWER BOUND (invisible line, used for betweenBarsData)
        LineChartBarData(
          spots: lowerBoundSpots,
          isCurved: true,
          color: Colors.transparent,
          barWidth: 0,
          dotData: const FlDotData(show: false),
        ),
      ],

      /// Shaded confidence band between upper and lower bounds
      betweenBarsData: <BetweenBarsData>[
        BetweenBarsData(
          fromIndex: 2, // upperBoundSpots
          toIndex: 3, // lowerBoundSpots
          color: AppColors.primary.withAlpha(35),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ChartTopLabel extends StatelessWidget {
  const _ChartTopLabel({required this.title, required this.isLeft});

  final String title;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (isLeft)
          const Icon(Icons.keyboard_arrow_left, size: 12, color: Colors.white54)
        else
          const Icon(Icons.close, size: 10, color: Colors.white54),
        Expanded(child: Container(height: 1, color: Colors.white24)),
        Flexible(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: AppText(
                title,
                variant: TextVariant.captionRegular,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Expanded(child: Container(height: 1, color: Colors.white24)),
        if (!isLeft)
          const Icon(
            Icons.keyboard_arrow_right,
            size: 12,
            color: Colors.white54,
          )
        else
          const Icon(Icons.close, size: 10, color: Colors.white54),
      ],
    );
  }
}
