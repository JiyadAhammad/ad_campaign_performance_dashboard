///
/// MAIN ROOT NAVIGATION
/// CONNECTS:
/// 1. Campaign List
///   1.1 Campaign detail
/// 2. Spend Summary
/// 3. Alerts
/// 4. Profile
///

import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/widgets/custom_text.dart';
import '../anomaly_alerts/presentation/pages/anomaly_alerts.dart';
import '../campaigns/presentation/pages/campaigns.dart';
import '../profile/presentation/pages/profile.dart';
import '../spend_summary/presentation/pages/spend_summary.dart';
import 'data/model/navigation_model.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({super.key});

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  ///
  /// NAVIGATION INDEX
  ///
  final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);

  final List<Widget> pages = const <Widget>[
    CampaignsScreen(),
    SpendSummaryScreen(),
    AnomalyAlertsScreen(),
    ProfileScreen(),
  ];

  @override
  void dispose() {
    currentIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// SCREEN
      ///
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndexNotifier,
        builder: (BuildContext context, int currentIndex, Widget? child) {
          return IndexedStack(index: currentIndex, children: pages);
        },
      ),

      ///
      /// BOTTOM NAVIGATION
      ///
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndexNotifier,
        builder: (BuildContext context, int currentIndex, Widget? child) {
          return AppBottomNavigationBar(
            currentIndex: currentIndex,
            onChanged: (int index) {
              currentIndexNotifier.value = index;
            },
          );
        },
      ),
    );
  }
}

///
/// CUSTOM BOTTOM NAVIGATION BAR
///
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onChanged,
  });
  final int currentIndex;
  final Function(int index) onChanged;

  static const List<NavItemModel> items = <NavItemModel>[
    NavItemModel(title: 'Campaigns', icon: Icons.campaign_outlined),
    NavItemModel(title: 'Spend Summary', icon: Icons.bar_chart_rounded),
    NavItemModel(title: 'Alerts', icon: Icons.notifications_none_rounded),
    NavItemModel(title: 'Profile', icon: Icons.person_outline_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.bottomNav,
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List<Widget>.generate(items.length, (int index) {
          final NavItemModel item = items[index];

          final bool isSelected = currentIndex == index;

          return Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => onChanged(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ///
                    /// ICON
                    ///
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      child: Icon(
                        item.icon,
                        size: 24,
                        color: isSelected ? AppColors.primary : Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 6),

                    ///
                    /// TITLE
                    ///
                    AppText(
                      item.title,
                      variant: TextVariant.captionMedium,
                      color: isSelected ? AppColors.primary : Colors.white70,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
