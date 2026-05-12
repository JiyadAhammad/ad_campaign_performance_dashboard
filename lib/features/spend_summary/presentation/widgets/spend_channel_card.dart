import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/sample_model.dart';

class SpendByChannelCard extends StatelessWidget {
  const SpendByChannelCard({super.key, required this.channels});
  final List<ChannelModel> channels;

  @override
  Widget build(BuildContext context) {
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
                child: CustomPaint(painter: _DonutChartPainter(channels)),
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
                    final ChannelModel item = channels[index];

                    return Row(
                      children: <Widget>[
                        CircleAvatar(radius: 10, backgroundColor: item.color),

                        const SizedBox(width: 12),

                        Expanded(
                          child: AppText(
                            item.title,
                            variant: TextVariant.labelMedium,
                          ),
                        ),

                        AppText('${item.percentage}%'),
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
  _DonutChartPainter(this.channels);
  final List<ChannelModel> channels;

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 20.0;

    final Rect rect = Offset.zero & size;

    double startAngle = -90;

    for (final ChannelModel item in channels) {
      final double sweepAngle = 360 * (item.percentage / 100);

      final Paint paint = Paint()
        ..color = item.color
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
