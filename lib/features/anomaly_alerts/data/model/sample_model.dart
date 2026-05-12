import 'package:flutter/material.dart';

///
/// MODEL
///
class AlertModel {
  const AlertModel({
    required this.type,
    required this.title,
    required this.time,
    required this.description,
    required this.spend,
    required this.expected,
    required this.change,
    required this.isPositive,
    required this.accentColor,
    required this.icon,
  });
  final String type;
  final String title;
  final String time;
  final String description;
  final String spend;
  final String expected;
  final String change;
  final bool isPositive;
  final Color accentColor;
  final IconData icon;
}
