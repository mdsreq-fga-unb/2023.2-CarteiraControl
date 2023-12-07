import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PGinainicialItemWidget extends StatelessWidget {
  const PGinainicialItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame9,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 5.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upwork",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "hoje",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 4.v,
          ),
          child: Column(
            children: [
              Text(
                "+ R 850.00",
                style: CustomTextStyles.titleMediumGreen600,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    "feito",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
