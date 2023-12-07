import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EstatisticaslistItemWidget extends StatelessWidget {
  const EstatisticaslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame92,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starbucks",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "15/11/2023",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 13.v,
            ),
            child: Text(
              "- R 150.00",
              style: CustomTextStyles.titleMediumSecondaryContainerSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
