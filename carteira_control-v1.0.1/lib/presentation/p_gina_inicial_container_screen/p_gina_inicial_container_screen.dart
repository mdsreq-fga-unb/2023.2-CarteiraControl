import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/p_gina_inicial_page/p_gina_inicial_page.dart';
import 'package:carteira_control/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PGinaInicialContainerScreen extends StatelessWidget {
  PGinaInicialContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.pGinaInicialPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
