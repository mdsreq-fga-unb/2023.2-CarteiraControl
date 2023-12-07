import '../estat_sticas_page/widgets/estatisticaslist_item_widget.dart';
import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class EstatSticasPage extends StatefulWidget {
  const EstatSticasPage({Key? key})
      : super(
          key: key,
        );

  @override
  EstatSticasPageState createState() => EstatSticasPageState();
}

class EstatSticasPageState extends State<EstatSticasPage>
    with AutomaticKeepAliveClientMixin<EstatSticasPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 82.v),
              Column(
                children: [
                  _buildVectorTwoStack(context),
                  SizedBox(height: 66.v),
                  _buildFrameEightRow(context),
                  SizedBox(height: 18.v),
                  _buildEstatisticasList(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorTwoStack(BuildContext context) {
    return SizedBox(
      height: 183.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector2,
            height: 144.v,
            width: 388.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 13.v),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 139.v,
              width: 392.h,
              margin: EdgeInsets.only(top: 13.v),
              padding: EdgeInsets.only(left: 135.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup99,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: SizedBox(
                        height: 81.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.gray700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 43.v),
                      padding: EdgeInsets.all(6.h),
                      decoration: AppDecoration.fillLightBlueA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Container(
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.lightBlueA700,
                          borderRadius: BorderRadius.circular(
                            7.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 170.v,
              width: 18.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.53, 0.5),
                  end: Alignment(-0.75, 0.5),
                  colors: [
                    appTheme.whiteA700,
                    appTheme.whiteA700,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 170.v,
              width: 19.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.53, 0.5),
                  end: Alignment(-0.75, 0.5),
                  colors: [
                    appTheme.whiteA700,
                    appTheme.whiteA700,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 48.v,
              width: 80.h,
              margin: EdgeInsets.only(left: 116.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle16,
                    height: 48.v,
                    width: 80.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13.v),
                      child: Text(
                        "R1,230",
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEightRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Top transactions",
              style: CustomTextStyles.titleMediumOnPrimarySemiBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBxSort1,
            height: 21.adaptSize,
            width: 21.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEstatisticasList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return EstatisticaslistItemWidget();
        },
      ),
    );
  }
}
