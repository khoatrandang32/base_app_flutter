import 'package:flutter/material.dart';

import 'app_text_theme.dart';
import 'colors/dark_colors.dart';
import 'colors/light_colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    brightness: Brightness.light,
    primaryColor: LightColors.primary,
    scaffoldBackgroundColor: LightColors.background,
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: LightColors.primary,
      secondary: LightColors.secondary,
      surface: LightColors.surface,
      error: LightColors.error,
      onPrimary: LightColors.onPrimary,
      onSecondary: LightColors.onSecondary,
      onSurface: LightColors.onSurface,
      onError: LightColors.onError,
    ),
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: LightColors.primary,
      foregroundColor: LightColors.onPrimary,
    ),
    useMaterial3: true,
  );

  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    primaryColor: DarkColors.primary,
    scaffoldBackgroundColor: DarkColors.background,
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: DarkColors.primary,
      secondary: DarkColors.secondary,
      surface: DarkColors.surface,
      error: DarkColors.error,
      onPrimary: DarkColors.onPrimary,
      onSecondary: DarkColors.onSecondary,
      onSurface: DarkColors.onSurface,
      onError: DarkColors.onError,
    ),
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkColors.primary,
      foregroundColor: DarkColors.onPrimary,
    ),
    useMaterial3: true,
  );
}
