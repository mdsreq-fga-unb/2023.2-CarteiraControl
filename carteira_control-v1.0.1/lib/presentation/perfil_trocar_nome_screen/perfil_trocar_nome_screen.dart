import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/app_bar/appbar_subtitle.dart';
import 'package:carteira_control/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carteira_control/widgets/app_bar/custom_app_bar.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class PerfilTrocarNomeScreen extends StatelessWidget {
  PerfilTrocarNomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pedrocaSampaioController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildStackOne(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 20.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Pedro Sampaio",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "sampaio@email.com",
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                    SizedBox(height: 51.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: CustomFloatingTextField(
                        controller: pedrocaSampaioController,
                        labelText: "Novo nome",
                        labelStyle: theme.textTheme.titleSmall!,
                        hintText: "Novo nome",
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Este campo não pode ficar vazio.",
                          style: CustomTextStyles.bodySmallRed500,
                        ),
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 72.h,
                        right: 61.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cancelar".toUpperCase(),
                            style: CustomTextStyles.titleSmallRoboto,
                          ),
                          Text(
                            "salvar".toUpperCase(),
                            style: CustomTextStyles.titleSmallRoboto,
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
  Widget _buildStackOne(BuildContext context) {
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
