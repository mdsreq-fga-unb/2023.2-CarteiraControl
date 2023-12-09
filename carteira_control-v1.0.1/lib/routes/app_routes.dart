import 'package:flutter/material.dart';
import 'package:carteira_control/presentation/criar_uma_conta_screen/criar_uma_conta_screen.dart';
import 'package:carteira_control/presentation/perfil_trocar_nome_screen/perfil_trocar_nome_screen.dart';
import 'package:carteira_control/presentation/p_gina_inicial_container_screen/p_gina_inicial_container_screen.dart';
import 'package:carteira_control/presentation/estat_sticas_tab_container_screen/estat_sticas_tab_container_screen.dart';
import 'package:carteira_control/presentation/adicionar_ganhos_tab_container_screen/adicionar_ganhos_tab_container_screen.dart';
import 'package:carteira_control/presentation/adicionar_despesas_tab_container_screen/adicionar_despesas_tab_container_screen.dart';
import 'package:carteira_control/presentation/perfil_screen/perfil_screen.dart';
import 'package:carteira_control/presentation/splash_screen/splash_screen.dart';
import 'package:carteira_control/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:carteira_control/presentation/login_screen/login_screen.dart';
import 'package:carteira_control/presentation/perfil_trocar_senha_screen/perfil_trocar_senha_screen.dart';
import 'package:carteira_control/presentation/carteira_tab_container_screen/carteira_tab_container_screen.dart';
import 'package:carteira_control/presentation/transa_es_de_ganhos_screen/transa_es_de_ganhos_screen.dart';
import 'package:carteira_control/presentation/transa_es_de_gastos_screen/transa_es_de_gastos_screen.dart';
import 'package:carteira_control/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String criarUmaContaScreen = '/criar_uma_conta_screen';
  static const String initial = '/';

  static const String perfilTrocarNomeScreen = '/perfil_trocar_nome_screen';

  static const String pGinaInicialPage = '/p_gina_inicial_page';

  static const String pGinaInicialContainerScreen =
      '/p_gina_inicial_container_screen';

  static const String estatSticasPage = '/estat_sticas_page';

  static const String estatSticasTabContainerScreen =
      '/estat_sticas_tab_container_screen';

  static const String adicionarGanhosPage = '/adicionar_ganhos_page';

  static const String adicionarGanhosTabContainerScreen =
      '/adicionar_ganhos_tab_container_screen';

  static const String adicionarDespesasPage = '/adicionar_despesas_page';

  static const String adicionarDespesasTabContainerScreen =
      '/adicionar_despesas_tab_container_screen';

  static const String perfilScreen = '/perfil_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String perfilTrocarSenhaScreen = '/perfil_trocar_senha_screen';

  static const String carteiraPage = '/carteira_page';

  static const String carteiraTabContainerScreen =
      '/carteira_tab_container_screen';

  static const String transaEsDeGanhosScreen = '/transa_es_de_ganhos_screen';

  static const String transaEsDeGastosScreen = '/transa_es_de_gastos_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    initial: (context) => OnboardingScreen(),
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    criarUmaContaScreen: (context) => CriarUmaContaScreen(),
    perfilTrocarNomeScreen: (context) => PerfilTrocarNomeScreen(),
    pGinaInicialContainerScreen: (context) => PGinaInicialContainerScreen(),
    estatSticasTabContainerScreen: (context) => EstatSticasTabContainerScreen(),
    adicionarGanhosTabContainerScreen: (context) =>
        AdicionarGanhosTabContainerScreen(),
    adicionarDespesasTabContainerScreen: (context) =>
        AdicionarDespesasTabContainerScreen(),
    perfilScreen: (context) => PerfilScreen(),
    loginScreen: (context) => LoginScreen(),
    perfilTrocarSenhaScreen: (context) => PerfilTrocarSenhaScreen(),
    carteiraTabContainerScreen: (context) => CarteiraTabContainerScreen(),
    transaEsDeGanhosScreen: (context) => TransaEsDeGanhosScreen(),
    transaEsDeGastosScreen: (context) => TransaEsDeGastosScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
