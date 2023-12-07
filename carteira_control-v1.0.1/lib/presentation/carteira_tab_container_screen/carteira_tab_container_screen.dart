import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/carteira_page/carteira_page.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/app_bar/appbar_leading_image.dart';
import 'package:carteira_control/widgets/app_bar/appbar_subtitle.dart';
import 'package:carteira_control/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carteira_control/widgets/app_bar/custom_app_bar.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class CarteiraTabContainerScreen extends StatefulWidget {
  const CarteiraTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CarteiraTabContainerScreenState createState() =>
      CarteiraTabContainerScreenState();
}

class CarteiraTabContainerScreenState extends State<CarteiraTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwenty(context),
              Container(
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Total",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "R 2.548,00",
                      style: CustomTextStyles.headlineLargeOnPrimary,
                    ),
                    SizedBox(height: 22.v),
                    Container(
                      height: 40.v,
                      width: 318.h,
                      margin: EdgeInsets.only(left: 26.h),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.gray700,
                        labelStyle: TextStyle(
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                        unselectedLabelColor: appTheme.gray700,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                        indicator: BoxDecoration(
                          color: appTheme.gray100,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "Transações",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Contas Futuras",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 473.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          CarteiraPage(),
                          CarteiraPage(),
                        ],
                      ),
                    ),
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
  Widget _buildTwenty(BuildContext context) {
    return Container(
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
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgIconChevronLeft,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            bottom: 9.v,
          ),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "Carteira",
        ),
        actions: [
          AppbarTrailingIconbutton(
            imagePath: ImageConstant.imgBell1,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
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
