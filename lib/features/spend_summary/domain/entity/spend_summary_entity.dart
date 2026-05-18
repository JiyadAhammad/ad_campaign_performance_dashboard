import 'package:equatable/equatable.dart';
import '../../../../core/enums/enums.dart';

class CampaignAnalyticsResponseEntity extends Equatable {
  const CampaignAnalyticsResponseEntity({
    required this.range,
    required this.summary,
  });

  final String range;
  final CampaignAnalyticsSummaryEntity summary;

  @override
  List<Object?> get props => <Object?>[range, summary];
}

class CampaignAnalyticsSummaryEntity extends Equatable {
  const CampaignAnalyticsSummaryEntity({
    required this.totalSpend,
    required this.totalImpressions,
    required this.totalClicks,
    required this.overallCtr,
    required this.byChannel,
    required this.topCampaigns,
  });

  final int totalSpend;
  final int totalImpressions;
  final int totalClicks;
  final double overallCtr;

  final List<ChannelAnalyticsEntity> byChannel;
  final List<TopCampaignEntity> topCampaigns;

  @override
  List<Object?> get props => <Object?>[
    totalSpend,
    totalImpressions,
    totalClicks,
    overallCtr,
    byChannel,
    topCampaigns,
  ];
}

class ChannelAnalyticsEntity extends Equatable {
  const ChannelAnalyticsEntity({
    required this.channel,
    required this.spend,
    required this.impressions,
    required this.clicks,
  });

  final AdChannel channel;
  final int spend;
  final int impressions;
  final int clicks;

  @override
  List<Object?> get props => <Object?>[channel, spend, impressions, clicks];

  int spendPercentage(int totalSpend) {
    if (totalSpend <= 0) {
      return 0;
    }

    final double percentage = (spend / totalSpend) * 100;

    return percentage.round();
  }
}

class TopCampaignEntity extends Equatable {
  const TopCampaignEntity({
    required this.id,
    required this.name,
    required this.ctr,
    required this.spend,
  });

  final String id;
  final String name;
  final double ctr;
  final int spend;

  @override
  List<Object?> get props => <Object?>[id, name, ctr, spend];
}
