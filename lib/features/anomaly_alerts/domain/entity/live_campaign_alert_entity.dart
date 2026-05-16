import 'package:equatable/equatable.dart';

///
/// RESPONSE ENTITY
///
class LiveCampaignMetricsResponseEntity extends Equatable {
  const LiveCampaignMetricsResponseEntity({
    required this.timestamp,
    required this.campaigns,
  });

  final String timestamp;

  final List<LiveCampaignMetricsEntity> campaigns;

  @override
  List<Object?> get props => <Object?>[timestamp, campaigns];
}

///
/// CAMPAIGN ENTITY
///
class LiveCampaignMetricsEntity extends Equatable {
  const LiveCampaignMetricsEntity({
    required this.id,
    required this.impressionsLastHour,
    required this.clicksLastHour,
    required this.spendLastHour,
    required this.ctrLastHour,
  });

  final String id;

  final int impressionsLastHour;

  final int clicksLastHour;

  final double spendLastHour;

  final double ctrLastHour;

  @override
  List<Object?> get props => <Object?>[
    id,
    impressionsLastHour,
    clicksLastHour,
    spendLastHour,
    ctrLastHour,
  ];

  ///
  /// CTR %
  ///
  double get ctrPercentage {
    return ctrLastHour * 100;
  }

  ///
  /// SAFE CTR STRING
  ///
  String get ctrFormatted {
    return '${ctrPercentage.toStringAsFixed(1)}%';
  }
}
