import 'package:flutter/material.dart';
import 'package:theme/src/constant/size/custom_text_size.dart';

class CustomTextTheme extends TextTheme {
  @override
  TextStyle? get displayLarge => super.displayLarge?.copyWith(
        fontSize: CustomTextSize.displayLarge,
      );

  @override
  TextStyle? get displayMedium => super.displayMedium?.copyWith(
        fontSize: CustomTextSize.displayMedium,
      );

  @override
  TextStyle? get displaySmall => super.displaySmall?.copyWith(
        fontSize: CustomTextSize.displaySmall,
      );

  @override
  TextStyle? get headlineLarge => super.headlineLarge?.copyWith(
        fontSize: CustomTextSize.headlineLarge,
      );

  @override
  TextStyle? get headlineMedium => super.headlineMedium?.copyWith(
        fontSize: CustomTextSize.headlineMedium,
      );

  @override
  TextStyle? get headlineSmall => super.headlineSmall?.copyWith(
        fontSize: CustomTextSize.headlineSmall,
      );

  @override
  TextStyle? get titleLarge => super.titleLarge?.copyWith(
        fontSize: CustomTextSize.titleLarge,
      );

  @override
  TextStyle? get titleMedium => super.titleMedium?.copyWith(
        fontSize: CustomTextSize.titleMedium,
      );

  @override
  TextStyle? get titleSmall => super.titleSmall?.copyWith(
        fontSize: CustomTextSize.titleSmall,
      );

  @override
  TextStyle? get bodyLarge => super.bodyLarge?.copyWith(
        fontSize: CustomTextSize.bodyLarge,
      );

  @override
  TextStyle? get bodyMedium => super.bodyMedium?.copyWith(
        fontSize: CustomTextSize.bodyMedium,
      );

  @override
  TextStyle? get bodySmall => super.bodySmall?.copyWith(
        fontSize: CustomTextSize.bodySmall,
      );

  @override
  TextStyle? get labelLarge => super.labelLarge?.copyWith(
        fontSize: CustomTextSize.labelLarge,
      );

  @override
  TextStyle? get labelMedium => super.labelMedium?.copyWith(
        fontSize: CustomTextSize.labelMedium,
      );

  @override
  TextStyle? get labelSmall => super.labelSmall?.copyWith(
        fontSize: CustomTextSize.labelSmall,
      );
}
