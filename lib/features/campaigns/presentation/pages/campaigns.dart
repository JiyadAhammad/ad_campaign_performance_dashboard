import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/campaign_entity.dart';
import '../bloc/campaign_bloc.dart';
import '../widget/campaign_card.dart';
import '../widget/campaign_shimmer.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const CustomAppBar(title: 'Campaign List '),
      body: Padding(
        padding: const EdgeInsets.all(18.0).copyWith(bottom: 0),
        child: Column(
          spacing: 12,
          children: <Widget>[
            ///
            /// SEARCH
            ///
            Container(
              height: 52,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(),
              ),
              child: const Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 12),
                  Expanded(
                    child: AppText(
                      'Search Campaigns...',
                      color: AppColors.labelText,
                    ),
                  ),
                  Icon(Icons.tune_rounded),
                ],
              ),
            ),

            ///
            /// FILTERS
            ///
            BlocBuilder<CampaignBloc, CampaignState>(
              builder: (BuildContext context, CampaignState state) {
                return Row(
                  spacing: 10,
                  children: <Widget>[
                    _FilterChip(
                      onTap: () {
                        context.read<CampaignBloc>().add(
                          const CampaignEvent.filterCampaigns(
                            CampaignFilter.all,
                          ),
                        );
                      },
                      title: 'All',
                      selected: state.selectedFilter == CampaignFilter.all,
                    ),

                    _FilterChip(
                      onTap: () {
                        context.read<CampaignBloc>().add(
                          const CampaignEvent.filterCampaigns(
                            CampaignFilter.active,
                          ),
                        );
                      },
                      title: 'Active',
                      selected: state.selectedFilter == CampaignFilter.active,
                    ),

                    _FilterChip(
                      onTap: () {
                        context.read<CampaignBloc>().add(
                          const CampaignEvent.filterCampaigns(
                            CampaignFilter.paused,
                          ),
                        );
                      },
                      title: 'Paused',
                      selected: state.selectedFilter == CampaignFilter.paused,
                    ),
                  ],
                );
              },
            ),

            ///
            /// LIST
            ///
            // TODO(Jiyad): Add Pull to refresh logic
            Expanded(
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  context.read<CampaignBloc>().add(
                    const CampaignEvent.getCampaigns(),
                  );
                },
                child: BlocBuilder<CampaignBloc, CampaignState>(
                  builder: (BuildContext context, CampaignState state) {
                    if (state.isLoading) {
                      return const CampaignListItemShimmer();
                    }
                    if (state.isError) {
                      return Center(child: AppText('${state.errorMessage}'));
                    }
                    final List<CampaignEntity> campaigns =
                        state.filteredCampaigns;
                    return ListView.builder(
                      itemCount: campaigns.length,
                      itemBuilder: (BuildContext context, int index) {
                        final CampaignEntity campaign = campaigns[index];

                        return CampaignCard(campaign: campaign);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: selected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(14),
        ),
        child: AppText(title, variant: TextVariant.labelMedium),
      ),
    );
  }
}
