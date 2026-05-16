import 'package:equatable/equatable.dart';

class CampaignDetailResponseEntity extends Equatable {
  const CampaignDetailResponseEntity({required this.campaign});

  final CampaignDetailEntity campaign;

  @override
  List<Object?> get props => <Object?>[campaign];
}

class CampaignDetailEntity extends Equatable {
  const CampaignDetailEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.objective,
    required this.channel,
    required this.budget,
    required this.spend,
    required this.impressions,
    required this.clicks,
    required this.conversions,
    required this.costPerClick,
    required this.costPerConversion,
    required this.startDate,
    required this.endDate,
    required this.currency,
    required this.targetAudience,
    required this.dailyBudget,
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

  final int conversions;

  final double costPerClick;

  final double costPerConversion;

  final String startDate;

  final String endDate;

  final String currency;

  final TargetAudienceEntity targetAudience;

  final int dailyBudget;

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
    conversions,
    costPerClick,
    costPerConversion,
    startDate,
    endDate,
    currency,
    targetAudience,
    dailyBudget,
    ctr,
    budgetUtilization,
  ];

  double get progressValue {
    if (budgetUtilization <= 0) {
      return 0;
    }

    return budgetUtilization / 100;
  }

  double get conversionRate {
    if (clicks <= 0) {
      return 0;
    }

    return (conversions / clicks) * 100;
  }

  String get formattedCtr {
    return '${(ctr * 100).toStringAsFixed(1)}%';
  }
}

class TargetAudienceEntity extends Equatable {
  const TargetAudienceEntity({
    required this.ageRange,
    required this.regions,
    required this.interests,
  });

  final String ageRange;

  final List<String> regions;

  final List<String> interests;

  @override
  List<Object?> get props => <Object?>[ageRange, regions, interests];

  String get regionsText {
    return regions.join(', ');
  }

  String get interestsText {
    return interests.join(', ');
  }
}
