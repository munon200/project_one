import 'package:flutter/material.dart';
import 'package:theme/src/constant/color/app_color_scheme.dart';
import 'package:theme/src/theme/app_input_decoration_theme.dart';
import 'package:theme/src/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: AppColorScheme.dark,
      );
    } else {
      data = ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: AppColorScheme.light,
      );
    }

    return data.copyWith(
      textTheme: AppTextTheme(),
      inputDecorationTheme: AppInputDecorationTheme(),
    );
  }
}
