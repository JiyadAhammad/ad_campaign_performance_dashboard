class ApiEndPoints {
  /*
  GET -> List all campaigns with summary metrics
      /campaigns 
      { campaigns: Campaign []}
  GET -> Single campaign full detail
      /campaigns/:id 
      {campaign: Campaign}
  GET -> 30-day daily CTR history
      /campaigns/:id/history  
      {history: DailyMetric[]}
  GET -> Aggregated spend by channel + date
      /campaigns/summary  
      {summary: Summary}
  GET -> Latest metrics snapshot (for polling)
      /campaigns/metrics/live  
      {snapshot: Snapshot}
  */
  static const String _v1 = '/v1';
  static String get campaigns => '$_v1/campaigns ';
  static String get campaignSummary => '$campaigns/summary ';
  static String get campaignMetrics => '$_v1/$campaigns/metrics/live';
}
