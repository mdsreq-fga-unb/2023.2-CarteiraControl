import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/app_bar/appbar_subtitle.dart';
import 'package:carteira_control/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carteira_control/widgets/app_bar/custom_app_bar.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  PerfilScreen({Key? key})
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
              _buildPerfilStack(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Pedro Sampaio",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "sampaio@email.com",
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                    SizedBox(height: 51.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserFill1Gray700,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 4.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "Trocar Nome",
                              style: CustomTextStyles.titleMedium_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPassword,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 5.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "Trocar Senha",
                            style: CustomTextStyles.titleMedium_1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignout,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 5.v,
                              bottom: 6.v,
                            ),
                            child: Text(
                              "Logout",
                              style: CustomTextStyles.titleMedium_1,
                            ),
                          ),
                        ],
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
  Widget _buildPerfilStack(BuildContext context) {
    return SizedBox(
      height: 297.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 44.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup6,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: CustomAppBar(
                centerTitle: true,
                title: AppbarSubtitle(
                  text: "Perfil",
                ),
                actions: [
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgBell1,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder60,
              ),
              child: Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWoman1,
                      height: 108.v,
                      width: 120.h,
                      radius: BorderRadius.circular(
                        60.h,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 120.v,
                        width: 110.h,
                        decoration: AppDecoration.outlineBlack,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120.v,
                                width: 110.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    60.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 120.v,
                                width: 110.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgWoman1120x110,
                                      height: 120.v,
                                      width: 110.h,
                                      radius: BorderRadius.circular(
                                        60.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 120.v,
                                        width: 110.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage17,
                                              height: 120.v,
                                              width: 110.h,
                                              radius: BorderRadius.circular(
                                                60.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage18,
                                              height: 116.v,
                                              width: 107.h,
                                              radius: BorderRadius.circular(
                                                60.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
