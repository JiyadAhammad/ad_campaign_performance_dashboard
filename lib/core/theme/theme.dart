import 'package:flutter/material.dart';

import 'colors.dart';

class AppCustomColors extends ThemeExtension<AppCustomColors> {
  AppCustomColors({
    required this.success,
    required this.warning,
    required this.error,
    required this.muted,
  });
  final Color success;
  final Color warning;
  final Color error;
  final Color muted;

  @override
  ThemeExtension<AppCustomColors> copyWith() => this;

  @override
  ThemeExtension<AppCustomColors> lerp(
    ThemeExtension<AppCustomColors>? other,
    double t,
  ) {
    if (other is! AppCustomColors) {
      return this;
    }
    return AppCustomColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      muted: AppColors.blue,
    );
  }
}

class AppTheme {
  // Shared Decoration Logic (DRY Principle)
  static InputBorder _border([Color color = Colors.grey]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color, width: 1.2),
    // borderSide: BorderSide.none,
  );
  // Shared Hint TextStyle logic
  static TextStyle _hintStyle(Color color) =>
      TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.normal);

  // --- DARK THEME ---
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBg,
    cardColor: AppColors.darkCard,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      surface: AppColors.darkCard,
      error: AppColors.error,
    ),
    extensions: <ThemeExtension<AppCustomColors>>[
      AppCustomColors(
        success: AppColors.success,
        warning: AppColors.warning,
        error: AppColors.error,
        muted: AppColors.blue,
      ),
    ],
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _hintStyle(AppColors.darkHint),
      // Adding standard field styling
      filled: true,
      fillColor: AppColors.darkCard,
      enabledBorder: _border(Colors.grey.shade400),
      focusedBorder: _border(AppColors.primary),
      errorBorder: _border(AppColors.error),
      focusedErrorBorder: _border(AppColors.error),
    ),
  );

  // --- LIGHT THEME ---
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBg,
    cardColor: AppColors.lightCard,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      error: AppColors.error,
    ),
    extensions: <ThemeExtension<AppCustomColors>>[
      AppCustomColors(
        success: AppColors.success,
        warning: AppColors.warning,
        error: AppColors.error,
        muted: AppColors.blue,
      ),
    ],
    // Adapt input theme for light mode
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _hintStyle(AppColors.lightHint),
      filled: true,
      fillColor: Colors.grey[100],
      enabledBorder: _border(Colors.grey.shade700),
      focusedBorder: _border(AppColors.primary),
      errorBorder: _border(AppColors.error),
      focusedErrorBorder: _border(AppColors.error),
    ),
  );
}
