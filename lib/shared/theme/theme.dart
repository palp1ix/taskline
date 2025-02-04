import 'package:flutter/material.dart';
import 'package:taskline/shared/theme/colors.dart';
import 'package:taskline/shared/theme/fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: AppFonts.ralewaySemiBold,
      hintColor: AppColors.hintColor,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.accent,
          onPrimary: AppColors.white,
          secondary: AppColors.lightAccent,
          onSecondary: AppColors.accent,
          error: AppColors.red,
          onError: AppColors.white,
          surface: AppColors.white,
          onSurface: AppColors.black),
      useMaterial3: true);
}
