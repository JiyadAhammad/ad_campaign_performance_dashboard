import 'package:freezed_annotation/freezed_annotation.dart';

enum AnomalyType {
  @JsonValue('spend_spike')
  SpendSpike,
  @JsonValue('ctr_drop')
  CtrDrop,
  @JsonValue('cpa_increase')
  CpaIncrease,
  @JsonValue('unknown')
  unknown;

  bool get isSpendSpike => this == AnomalyType.SpendSpike;
  bool get isCtrDrop => this == AnomalyType.CtrDrop;
}

enum AnomalySeverity {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
  @JsonValue('unknown')
  unknown;

  bool get isHigh => this == AnomalySeverity.high;
  bool get isMedium => this == AnomalySeverity.medium;
}

enum CampaignStatus {
  @JsonValue('Active')
  Active,
  @JsonValue('Paused')
  Paused,
  @JsonValue('Ended')
  Ended,
  @JsonValue('unknown')
  unknown;

  bool get isActive => this == CampaignStatus.Active;
  bool get isPaused => this == CampaignStatus.Paused;
}

enum CampaignObjective {
  @JsonValue('Awareness')
  Awareness,
  @JsonValue('Conversion')
  Conversion,
  @JsonValue('Traffic')
  Traffic,
  @JsonValue('Engagement')
  Engagement,
  @JsonValue('unknown')
  unknown,
}

enum AdChannel {
  @JsonValue('Social')
  Social,
  @JsonValue('Search')
  Search,
  @JsonValue('Display')
  Display,
  @JsonValue('unknown')
  unknown,
}

enum ForecastTrend {
  @JsonValue('upward')
  upward,
  @JsonValue('downward')
  downward,
  @JsonValue('stable')
  stable,
  @JsonValue('unknown')
  unknown;

  bool get isUpward => this == ForecastTrend.upward;
  bool get isDownward => this == ForecastTrend.downward;
}
