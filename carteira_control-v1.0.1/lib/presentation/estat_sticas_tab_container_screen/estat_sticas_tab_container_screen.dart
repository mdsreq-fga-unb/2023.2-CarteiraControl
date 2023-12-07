import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/estat_sticas_page/estat_sticas_page.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class EstatSticasTabContainerScreen extends StatefulWidget {
  const EstatSticasTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EstatSticasTabContainerScreenState createState() =>
      EstatSticasTabContainerScreenState();
}

class EstatSticasTabContainerScreenState
    extends State<EstatSticasTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50.v),
              Text(
                "Estatísticas",
                style: CustomTextStyles.titleMediumOnPrimary,
              ),
              SizedBox(height: 42.v),
              Container(
                height: 40.v,
                width: 325.h,
                margin: EdgeInsets.only(right: 27.h),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: 13.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 13.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.lightBlueA700,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Dia",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Semana",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Mês",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Ano",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 627.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    EstatSticasPage(),
                    EstatSticasPage(),
                    EstatSticasPage(),
                    EstatSticasPage(),
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
