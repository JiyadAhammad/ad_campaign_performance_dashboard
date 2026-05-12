import 'package:flutter/material.dart';

import '../theme/colors.dart';

class AppTypography {
  AppTypography._();

  /// 18px - SemiBold
  /// Used for:
  /// - Screen titles
  /// - Primary card headings
  static const TextStyle headingLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  /// 14px - Medium
  /// Used for:
  /// - Campaign titles
  /// - Important labels
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  /// 12px - Medium
  /// Used for:
  /// - Category tags
  /// - Secondary emphasis text
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );

  /// 10px - Medium
  /// Used for:
  /// - Small highlighted labels
  /// - Status text
  static const TextStyle captionMedium = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );

  /// 10px - Regular
  /// Used for:
  /// - Supporting information
  /// - Metadata
  static const TextStyle captionRegular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.labelText,
    height: 1.3,
  );
}
