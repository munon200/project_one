import 'package:flutter/material.dart';
import 'package:theme/src/constant/size/custom_space_size.dart';

class CustomSpacer extends StatelessWidget {
  final double size;

  const CustomSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
    );
  }

  // Default Spacer
  // ===========================================================================

  static CustomSpacer get spacingXXS => CustomSpacer(
        size: CustomSpaceSize.spacingXXS,
      );

  static CustomSpacer get spacingXS => CustomSpacer(
        size: CustomSpaceSize.spacingXS,
      );

  static CustomSpacer get spacingS => CustomSpacer(
        size: CustomSpaceSize.spacingS,
      );

  static CustomSpacer get spacing => CustomSpacer(
        size: CustomSpaceSize.spacing,
      );

  static CustomSpacer get spacingL => CustomSpacer(
        size: CustomSpaceSize.spacingL,
      );

  static CustomSpacer get spacingXL => CustomSpacer(
        size: CustomSpaceSize.spacingXL,
      );

  static CustomSpacer get spacingXXL => CustomSpacer(
        size: CustomSpaceSize.spacingXXL,
      );
}
