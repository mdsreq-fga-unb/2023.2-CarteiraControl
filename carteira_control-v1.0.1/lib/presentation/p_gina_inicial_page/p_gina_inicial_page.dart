import '../p_gina_inicial_page/widgets/p_ginainicial_item_widget.dart';
import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:carteira_control/widgets/app_bar/appbar_title.dart';
import 'package:carteira_control/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carteira_control/widgets/app_bar/custom_app_bar.dart';
import 'package:carteira_control/widgets/custom_drop_down.dart';
import 'package:carteira_control/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class PGinaInicialPage extends StatelessWidget {
  PGinaInicialPage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
              _buildBoaTarde(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 31.v,
                ),
                child: Column(
                  children: [
                    _buildFrameEight(context),
                    SizedBox(height: 16.v),
                    _buildPginaInicial(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBoaTarde(BuildContext context) {
    return SizedBox(
      height: 322.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 41.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup6,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: CustomAppBar(
                height: 48.v,
                title: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Column(
                    children: [
                      AppbarSubtitleOne(
                        text: "Boa tarde,",
                        margin: EdgeInsets.only(right: 77.h),
                      ),
                      SizedBox(height: 6.v),
                      AppbarTitle(
                        text: "Pedro Sampaio",
                      ),
                    ],
                  ),
                ),
                actions: [
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgBell1,
                    margin: EdgeInsets.fromLTRB(24.h, 2.v, 24.h, 5.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 25.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup7,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDropDown(
                        width: 121.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 2.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                        ),
                        hintText: "Total Balanço",
                        items: dropdownItemList,
                        onChanged: (value) {},
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup8,
                        height: 5.v,
                        width: 21.h,
                        margin: EdgeInsets.only(
                          top: 10.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "R 1,556.00",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 36.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 6.v,
                              ),
                              child: CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration:
                                    IconButtonStyleHelper.fillWhiteATL18,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Entradas",
                                    style:
                                        CustomTextStyles.titleMediumBluegray100,
                                  ),
                                  Text(
                                    "R 1,840.00",
                                    style: CustomTextStyles.titleLargeWhiteA700,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 6.v,
                              ),
                              child: CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration:
                                    IconButtonStyleHelper.fillWhiteATL18,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame6,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Saídas",
                                    style:
                                        CustomTextStyles.titleMediumBluegray100,
                                  ),
                                  Text(
                                    "R 284.00",
                                    style: CustomTextStyles.titleLargeWhiteA700,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Histórico de Transações",
            style: CustomTextStyles.titleMediumOnPrimarySemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Ver todos",
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPginaInicial(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return PGinainicialItemWidget();
        },
      ),
    );
  }
}
