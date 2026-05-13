class CampaignDetailResponse {
  const CampaignDetailResponse({required this.campaign, required this.history});
  final CampaignModel campaign;
  final List<DailyMetric> history;
}

class CampaignModel {
  const CampaignModel({
    required this.id,
    required this.name,
    required this.status,
    required this.type,
    required this.impressions,
    required this.clicks,
    required this.ctr,
    required this.totalSpend,
  });
  final String id;
  final String name;
  final String status;
  final String type;

  final int impressions;
  final int clicks;

  final double ctr;
  final double totalSpend;
}

class DailyMetric {
  const DailyMetric({required this.date, required this.ctr});
  final String date;
  final double ctr;
}
