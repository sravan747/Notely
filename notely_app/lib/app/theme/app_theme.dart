import 'package:flutter/material.dart';
import 'package:notely_app/core/constants/app_colors.dart';

class AppTheme {
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: AppColors.black,
    onPrimary: AppColors.white,
    secondary: AppColors.coral,
    onSecondary: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.black,
    surfaceContainerHighest: AppColors.lightGrey,
    onSurfaceVariant: AppColors.mutedGrey
  );
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: AppColors.white,
    onPrimary: AppColors.black,
    secondary: AppColors.coral,
    onSecondary: AppColors.white,
    surface: AppColors.black,
    onSurface: AppColors.white,
    surfaceContainerHighest: AppColors.lightGrey,
    onSurfaceVariant: AppColors.mutedGrey
  );

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme
  );
}
