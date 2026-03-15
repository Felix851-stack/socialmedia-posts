// lib/theme/app_theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color facebookBlue = Color(0xFF1877F2);
  static const Color facebookDarkBlue = Color(0xFF166FE5);
  static const Color createGreen = Color(0xFF42B72A);
  static const Color createGreenDark = Color(0xFF36A420);
  static const Color background = Color(0xFFF0F2F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color divider = Color(0xFFCED0D4);
  static const Color hintText = Color(0xFF8A8D91);
  static const Color inputBorder = Color(0xFFCED0D4);
  static const Color inputFocusBorder = Color(0xFF1877F2);
  static const Color textPrimary = Color(0xFF1C1E21);
  static const Color textSecondary = Color(0xFF606770);
  static const Color forgotPasswordColor = Color(0xFF1877F2);
  static const Color shadowColor = Color(0x1A000000);
  static const Color cardShadow = Color(0x0F000000);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.light(
        primary: AppColors.facebookBlue,
      ),
      textTheme: GoogleFonts.notoSansTextTheme(),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: GoogleFonts.notoSans(
          color: AppColors.hintText,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.inputBorder, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.inputBorder, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.inputFocusBorder, width: 2),
        ),
      ),
    );
  }
}
