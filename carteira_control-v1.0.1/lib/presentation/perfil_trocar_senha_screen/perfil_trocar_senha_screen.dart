import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class PerfilTrocarSenhaScreen extends StatelessWidget {
  PerfilTrocarSenhaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController eusoubonitoController = TextEditingController();

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
              _buildSeventyFour(context),
              SizedBox(height: 21.v),
              Text(
                "Enjelin Morgeana",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 4.v),
              Text(
                "sampaio@email.com",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 51.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  right: 14.h,
                ),
                child: CustomFloatingTextField(
                  controller: eusoubonitoController,
                  labelText: "Nova Senha",
                  labelStyle: theme.textTheme.titleSmall!,
                  hintText: "Nova Senha",
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerRight,
                  suffix: Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 19.v,
                      width: 22.h,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 64.v,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 36.h),
                  child: Text(
                    "Este campo não pode ficar vazio.",
                    style: CustomTextStyles.bodySmallRed500,
                  ),
                ),
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 87.h,
                  right: 76.h,
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
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return SizedBox(
      height: 297.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 184.h,
                vertical: 50.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup6,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "Perfil",
                style: CustomTextStyles.titleMediumWhiteA700SemiBold18,
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
