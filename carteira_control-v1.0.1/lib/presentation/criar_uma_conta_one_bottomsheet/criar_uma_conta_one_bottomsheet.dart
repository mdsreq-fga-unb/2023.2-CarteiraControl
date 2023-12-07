import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class CriarUmaContaOneBottomsheet extends StatelessWidget {
  const CriarUmaContaOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 4.h),
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 44.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Oops. Ocorreu um erro!",
              style: CustomTextStyles.titleLargeLightblueA700,
            ),
            SizedBox(height: 35.v),
            OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  theme.colorScheme.primary,
                  appTheme.lightBlueA700,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: CustomOutlinedButton(
                text: "tente novamente",
              ),
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }
}
