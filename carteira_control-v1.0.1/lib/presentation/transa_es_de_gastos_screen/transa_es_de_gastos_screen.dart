import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/app_bar/appbar_leading_image.dart';
import 'package:carteira_control/widgets/app_bar/appbar_subtitle.dart';
import 'package:carteira_control/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carteira_control/widgets/app_bar/custom_app_bar.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:carteira_control/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class TransaEsDeGastosScreen extends StatelessWidget {
  TransaEsDeGastosScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirtyEight(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        radius: BorderRadius.circular(
                          35.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      width: 80.h,
                      text: "Saiu",
                      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallSecondaryContainer,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "r 85.00",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 37.v),
                    _buildFrameThirty(context),
                    SizedBox(height: 19.v),
                    _buildThirty(
                      context,
                      userName: "Status",
                      userImage: "saiu",
                    ),
                    SizedBox(height: 10.v),
                    _buildThirty(
                      context,
                      userName: "Para",
                      userImage: "Bianca Ribeiro",
                    ),
                    SizedBox(height: 10.v),
                    _buildThirty(
                      context,
                      userName: "Horário",
                      userImage: "16:30 ",
                    ),
                    SizedBox(height: 11.v),
                    _buildThirty(
                      context,
                      userName: "Data",
                      userImage: "11/11/2023",
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    _buildThirty(
                      context,
                      userName: "Gastos",
                      userImage: "r 85.00",
                    ),
                    SizedBox(height: 10.v),
                    _buildThirty(
                      context,
                      userName: "taxa",
                      userImage: "- r 0.99",
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    _buildThirty(
                      context,
                      userName: "Total",
                      userImage: "r 84.00",
                    ),
                    SizedBox(height: 39.v),
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
                          appTheme.blueGray600,
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: CustomOutlinedButton(
                        text: "Baixar  Recibo",
                        buttonStyle: CustomButtonStyles.outlineTL30,
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 47.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup6,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomAppBar(
        height: 28.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgIconChevronLeft,
          margin: EdgeInsets.only(left: 24.h),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "Transações de Gastos",
        ),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgGroup19,
            margin: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 11.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirty(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction details",
          style: CustomTextStyles.titleMedium18,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String userName,
    required String userImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleMediumGray700_1.copyWith(
            color: appTheme.gray700,
          ),
        ),
        Text(
          userImage,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homef1:
        return AppRoutes.pGinaInicialPage;
      case BottomBarEnum.Barchart1:
        return "/";
      case BottomBarEnum.Wallet1:
        return "/";
      case BottomBarEnum.User11:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.pGinaInicialPage:
        return PGinaInicialPage();
      default:
        return DefaultWidget();
    }
  }
}
