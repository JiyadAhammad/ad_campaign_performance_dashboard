import 'package:equatable/equatable.dart';

class CampaignForecastResponseEntity extends Equatable {
  const CampaignForecastResponseEntity({
    required this.campaignId,
    required this.horizonDays,
    required this.model,
    required this.generatedAt,
    required this.forecast,
    required this.recommendation,
  });

  final String campaignId;

  final int horizonDays;

  final String model;

  final String generatedAt;

  final List<CampaignForecastEntity> forecast;

  final ForecastRecommendationEntity recommendation;

  @override
  List<Object?> get props => <Object?>[
    campaignId,
    horizonDays,
    model,
    generatedAt,
    forecast,
    recommendation,
  ];

  double get averagePredictedCtr {
    if (forecast.isEmpty) {
      return 0;
    }

    final double totalCtr = forecast.fold(
      0,
      (double previousValue, CampaignForecastEntity element) =>
          previousValue + element.predictedCtr,
    );

    return totalCtr / forecast.length;
  }

  String get formattedAverageCtr {
    return '${(averagePredictedCtr * 100).toStringAsFixed(1)}%';
  }
}

class CampaignForecastEntity extends Equatable {
  const CampaignForecastEntity({
    required this.date,
    required this.predictedCtr,
    required this.lowerBound,
    required this.upperBound,
  });

  final String date;

  final double predictedCtr;

  final double lowerBound;

  final double upperBound;

  @override
  List<Object?> get props => <Object?>[
    date,
    predictedCtr,
    lowerBound,
    upperBound,
  ];

  double get predictedCtrPercentage {
    return predictedCtr * 100;
  }

  double get lowerBoundPercentage {
    return lowerBound * 100;
  }

  double get upperBoundPercentage {
    return upperBound * 100;
  }

  String get formattedPredictedCtr {
    return '${predictedCtrPercentage.toStringAsFixed(1)}%';
  }
}

class ForecastRecommendationEntity extends Equatable {
  const ForecastRecommendationEntity({
    required this.trend,
    required this.changePercent,
    required this.message,
    required this.suggestedDailyBudget,
  });

  final String trend;

  final double changePercent;

  final String message;

  final int suggestedDailyBudget;

  @override
  List<Object?> get props => <Object?>[
    trend,
    changePercent,
    message,
    suggestedDailyBudget,
  ];

  bool get isDownwardTrend {
    return trend == 'downward';
  }

  bool get isUpwardTrend {
    return trend == 'upward';
  }

  double get absoluteChangePercent {
    return changePercent.abs();
  }

  String get formattedChangePercent {
    return '${changePercent.toStringAsFixed(1)}%';
  }
}
