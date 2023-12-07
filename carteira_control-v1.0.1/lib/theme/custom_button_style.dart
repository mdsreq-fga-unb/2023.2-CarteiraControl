import 'dart:ui';
import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillLightBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientTealToLightBlueADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(32.h),
        gradient: LinearGradient(
          begin: Alignment(0.46, 0),
          end: Alignment(0.46, 1),
          colors: [
            appTheme.teal30001,
            appTheme.lightBlueA700,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineTL30 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
