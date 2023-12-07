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

class TransaEsDeGanhosScreen extends StatelessWidget {
  TransaEsDeGanhosScreen({Key? key})
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
              _buildThirtySix(context),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame9,
                        height: 40.v,
                        width: 46.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      width: 80.h,
                      text: "Entrou",
                      buttonStyle: CustomButtonStyles.fillLightBlueA,
                      buttonTextStyle: CustomTextStyles.titleSmall_2,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "R 850.00",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 37.v),
                    _buildFrameThirty(context),
                    SizedBox(height: 17.v),
                    _buildThirty(
                      context,
                      userName: "Status",
                      escrowName: "entrou",
                    ),
                    SizedBox(height: 11.v),
                    _buildThirty(
                      context,
                      userName: "Para",
                      escrowName: "Upwork Escrow",
                    ),
                    SizedBox(height: 9.v),
                    _buildThirty(
                      context,
                      userName: "Horário",
                      escrowName: "10:00 ",
                    ),
                    SizedBox(height: 11.v),
                    _buildThirty(
                      context,
                      userName: "Data",
                      escrowName: "11/11/2023",
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    _buildThirty(
                      context,
                      userName: "Ganhos",
                      escrowName: "r 870.00",
                    ),
                    SizedBox(height: 10.v),
                    _buildThirty(
                      context,
                      userName: "Taxas",
                      escrowName: "- r 20.00",
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    _buildThirty(
                      context,
                      userName: "Total",
                      escrowName: "R 850.00",
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
                        text: "Baixar recibo",
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
  Widget _buildThirtySix(BuildContext context) {
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
          text: "Transações de Ganhos",
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
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            "Detalhes da Transação",
            style: CustomTextStyles.titleMedium18,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
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
    required String escrowName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            userName,
            style: CustomTextStyles.titleMediumGray700_1.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          escrowName,
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
