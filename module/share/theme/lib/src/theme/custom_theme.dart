import 'package:flutter/material.dart';
import 'package:theme/src/constant/color/custom_color_scheme.dart';
import 'package:theme/src/theme/custom_input_decoration_theme.dart';
import 'package:theme/src/theme/custom_text_theme.dart';

class CustomTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: CustomColorScheme.dark,
      );
    } else {
      data = ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: CustomColorScheme.light,
      );
    }

    return data.copyWith(
      textTheme: CustomTextTheme(),
      inputDecorationTheme: CustomInputDecorationTheme(),
    );
  }
}
