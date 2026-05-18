import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/spend_summary_entity.dart';

class SpendByChannelCard extends StatelessWidget {
  const SpendByChannelCard({
    super.key,
    required this.channels,
    required this.totalSpend,
  });
  final List<ChannelAnalyticsEntity> channels;
  final int totalSpend;

  @override
  Widget build(BuildContext context) {
    final List<MaterialColor> colors = List.generate(channels.length, (
      int index,
    ) {
      return Colors.primaries[Random().nextInt(10)];
    });
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppText('Spend by channel'),

          const SizedBox(height: 20),

          Row(
            children: <Widget>[
              ///
              /// DONUT
              ///
              SizedBox(
                height: 125,
                width: 125,
                child: CustomPaint(
                  painter: _DonutChartPainter(
                    channels,
                    totalSpend: totalSpend,
                    colors: colors,
                  ),
                ),
              ),

              const SizedBox(width: 22),

              ///
              /// LEGENDS
              ///
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: channels.length,
                  separatorBuilder: (_, __) =>
                      const Divider(color: Colors.white24),
                  itemBuilder: (BuildContext context, int index) {
                    final ChannelAnalyticsEntity item = channels[index];

                    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: colors[index],
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: AppText(
                            item.channel.name,
                            variant: TextVariant.labelMedium,
                          ),
                        ),

                        AppText('${item.spendPercentage(totalSpend)}%'),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DonutChartPainter extends CustomPainter {
  _DonutChartPainter(
    this.channels, {
    required this.totalSpend,
    required this.colors,
  });
  final List<ChannelAnalyticsEntity> channels;
  final int totalSpend;
  final List<Color> colors;

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 20.0;

    final Rect rect = Offset.zero & size;

    double startAngle = -90;

    // for (final ChannelAnalyticsEntity item in channels) {
    for (int i = 0; i < channels.length; i++) {
      final ChannelAnalyticsEntity item = channels[i];
      final Color color = colors[i];
      final double sweepAngle = 360 * (item.spendPercentage(totalSpend) / 100);

      final Paint paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.butt
        ..strokeWidth = strokeWidth;

      canvas.drawArc(
        rect.deflate(strokeWidth / 2),
        radians(startAngle),
        radians(sweepAngle),
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  double radians(double degree) {
    return degree * 3.14159265359 / 180;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
