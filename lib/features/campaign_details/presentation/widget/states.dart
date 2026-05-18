import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_text.dart';

///
/// MINI LOADING STATE
///
class MiniLoadingState extends StatelessWidget {
  const MiniLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: .start,
          children: <Widget>[
            const AppText('Loading', variant: TextVariant.labelMedium),

            const SizedBox(height: 5),

            ///
            /// SHIMMER LINES
            ///
            ...List<Widget>.generate(
              3,
              (int index) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  height: 8,
                  width: index == 1 ? 70 : double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(15),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            ///
            /// LOADER
            ///
            Center(
              child: CircularProgressIndicator.adaptive(
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.primary,
                ),
                backgroundColor: AppColors.primary.withAlpha(20),
              ),
            ),

            const SizedBox(height: 10),

            ///
            /// SHIMMER LINES
            ///
            ...List<Widget>.generate(
              3,
              (int index) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Container(
                  height: 8,
                  width: index == 1 ? 70 : double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(15),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///
/// MINI EMPTY STATE
///
class MiniEmptyState extends StatelessWidget {
  const MiniEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        height: 150,
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
              child: AppText('No data', variant: TextVariant.labelMedium),
            ),

            const SizedBox(height: 5),

            ///
            /// ICON
            ///
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: Colors.white.withAlpha(10)),
              child: const Icon(
                Icons.inventory_2_outlined,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            ///
            /// TITLE
            ///
            const AppText(
              'No data available',
              variant: TextVariant.captionMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 2),

            ///
            /// DESCRIPTION
            ///
            const AppText(
              'There is no data to display for this period.',
              variant: TextVariant.captionRegular,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

///
/// MINI ERROR STATE
///
class MiniErrorState extends StatelessWidget {
  const MiniErrorState({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        height: 150,
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
              child: AppText('Error', variant: TextVariant.labelMedium),
            ),

            const SizedBox(height: 5),

            ///
            /// ICON
            ///
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: Colors.red.withAlpha(20)),
              child: const Icon(Icons.error_outline, color: Colors.redAccent),
            ),

            const SizedBox(height: 8),

            ///
            /// TITLE
            ///
            const AppText(
              'Failed to load data',
              variant: TextVariant.captionMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 2),

            ///
            /// DESCRIPTION
            ///
            const AppText(
              'Something went wrong',
              variant: TextVariant.captionRegular,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 8),

            ///
            /// RETRY
            ///
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: AppColors.primary.withAlpha(40)),
              ),
              child: const AppText(
                'Retry',
                variant: TextVariant.captionRegular,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
