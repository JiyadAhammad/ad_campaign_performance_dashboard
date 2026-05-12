import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

class DateRangeCard extends StatelessWidget {
  const DateRangeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCard(
      child: Column(
        spacing: 12,
        crossAxisAlignment: .start,
        children: <Widget>[
          AppText('Date Range'),

          Row(
            spacing: 8,
            children: <Widget>[
              _DateChip(title: 'Last 7 Days', selected: true),
              _DateChip(title: 'Last 14 Days'),
              _DateChip(title: 'Last 30 Days'),
            ],
          ),
        ],
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  const _DateChip({required this.title, this.selected = false});
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: selected ? AppColors.primary : Colors.white24,
          ),
        ),
        child: AppText(
          title,
          variant: TextVariant.captionRegular,
          color: selected ? AppColors.primary : AppColors.labelText,
        ),
      ),
    );
  }
}
