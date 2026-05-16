import 'package:equatable/equatable.dart';

class CampaignDetailsHistoryEntity extends Equatable {
  const CampaignDetailsHistoryEntity({
    required this.campaignId,
    required this.dataPoints,
    required this.history,
  });

  final String campaignId;

  final int dataPoints;

  final List<CampaignHistoryEntity> history;

  @override
  List<Object?> get props => <Object?>[campaignId, dataPoints, history];

  double get averageCtr {
    if (history.isEmpty) {
      return 0;
    }

    final double totalCtr = history.fold(
      0,
      (double previousValue, CampaignHistoryEntity element) =>
          previousValue + element.ctr,
    );

    return totalCtr / history.length;
  }

  int get totalClicks {
    return history.fold(
      0,
      (int previousValue, CampaignHistoryEntity element) =>
          previousValue + element.clicks,
    );
  }

  int get totalImpressions {
    return history.fold(
      0,
      (int previousValue, CampaignHistoryEntity element) =>
          previousValue + element.impressions,
    );
  }
}

class CampaignHistoryEntity extends Equatable {
  const CampaignHistoryEntity({
    required this.date,
    required this.impressions,
    required this.clicks,
    required this.ctr,
  });

  final String date;

  final int impressions;

  final int clicks;

  final double ctr;

  @override
  List<Object?> get props => <Object?>[date, impressions, clicks, ctr];

  double get ctrPercentage {
    return ctr * 100;
  }

  String get formattedCtr {
    return '${ctrPercentage.toStringAsFixed(1)}%';
  }
}
