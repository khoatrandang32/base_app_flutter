import 'package:flutter/material.dart';

import 'colors/dark_colors.dart';
import 'colors/light_colors.dart';

class AppTextTheme {
  static const _fontFamily = 'Roboto';

  static final lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 10),
  ).apply(
    fontFamily: _fontFamily,
    bodyColor: LightColors.onBackground,
    displayColor: LightColors.onPrimary,
  );

  static final darkTextTheme = lightTextTheme.apply(
    bodyColor: DarkColors.onBackground,
    displayColor: DarkColors.onPrimary,
  );
}
