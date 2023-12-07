import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Criar uma Conta",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.criarUmaContaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Perfil - Trocar Nome",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.perfilTrocarNomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Página Inicial - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pGinaInicialContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Estatísticas - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.estatSticasTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Adicionar Ganhos - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.adicionarGanhosTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Adicionar Despesas - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.adicionarDespesasTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Perfil",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.perfilScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Perfil - Trocar Senha",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.perfilTrocarSenhaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Carteira - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.carteiraTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transações de ganhos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transaEsDeGanhosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transações de gastos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transaEsDeGastosScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
