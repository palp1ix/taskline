import 'package:flutter/material.dart';
import 'package:taskline/shared/theme/colors.dart';
import 'package:taskline/shared/theme/fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: AppFonts.pofoRegular,
    hintColor: AppColors.hintColor,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.accent,
        primaryContainer: AppColors.white,
        onPrimary: AppColors.white,
        secondary: AppColors.lightAccent,
        onSecondary: AppColors.accent,
        error: AppColors.red,
        onError: AppColors.white,
        surface: AppColors.background,
        onSurface: AppColors.black),
  );
}
