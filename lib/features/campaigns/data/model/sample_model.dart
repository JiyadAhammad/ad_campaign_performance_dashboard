import 'package:flutter/material.dart';

class CampaignModel {
  CampaignModel({
    required this.title,
    required this.category,
    required this.status,
    required this.spend,
    required this.totalSpend,
    required this.progress,
    required this.impressions,
    required this.clicks,
    required this.ctr,
    required this.startDate,
    required this.audience,
    required this.icon,
  });
  final String title;
  final String category;
  final String status;
  final String spend;
  final String totalSpend;
  final double progress;
  final String impressions;
  final String clicks;
  final String ctr;
  final String startDate;
  final String audience;
  final IconData icon;
}
