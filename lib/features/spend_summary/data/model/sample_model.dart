import 'package:flutter/material.dart';

class ChannelModel {
  const ChannelModel({
    required this.title,
    required this.percentage,
    required this.color,
  });
  final String title;
  final int percentage;
  final Color color;
}

class TopCampaignModel {
  const TopCampaignModel({
    required this.rank,
    required this.title,
    required this.ctr,
    required this.icon,
  });
  final int rank;
  final String title;
  final String ctr;
  final IconData icon;
}
