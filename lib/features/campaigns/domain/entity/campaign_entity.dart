import 'package:equatable/equatable.dart';

class CampaignEntity extends Equatable {
  const CampaignEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.objective,
    required this.channel,
    required this.budget,
    required this.spend,
    required this.impressions,
    required this.clicks,
    required this.startDate,
    required this.endDate,
    required this.currency,
    required this.thumbnail,
    required this.ctr,
    required this.budgetUtilization,
  });
  final String id;
  final String name;
  final String status;
  final String objective;
  final String channel;
  final int budget;
  final int spend;
  final int impressions;
  final int clicks;
  final String startDate;
  final String endDate;
  final String currency;
  final String thumbnail;
  final double ctr;
  final double budgetUtilization;

  @override
  List<Object?> get props => <Object?>[
    id,
    name,
    status,
    objective,
    channel,
    budget,
    spend,
    impressions,
    clicks,
    startDate,
    endDate,
    currency,
    thumbnail,
    ctr,
    budgetUtilization,
  ];

  double get progressValue {
    if (budgetUtilization <= 0) {
      return 0;
    }
    return budgetUtilization / 100;
  }
}
