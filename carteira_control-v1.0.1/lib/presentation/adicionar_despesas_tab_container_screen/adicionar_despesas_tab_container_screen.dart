import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/adicionar_despesas_page/adicionar_despesas_page.dart';
import 'package:flutter/material.dart';

class AdicionarDespesasTabContainerScreen extends StatefulWidget {
  const AdicionarDespesasTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AdicionarDespesasTabContainerScreenState createState() =>
      AdicionarDespesasTabContainerScreenState();
}

class AdicionarDespesasTabContainerScreenState
    extends State<AdicionarDespesasTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
          height: 631.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildAdicionarDespesasSection(context),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 28.h,
                      top: 147.v,
                      right: 28.h,
                    ),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 40.v,
                          width: 319.h,
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
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "ENTROU",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "SAIU",
                                ),
                              ),
                            ],
                          ),
                        ),
                        _buildTabBarViewSection(context),
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
  Widget _buildAdicionarDespesasSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 119.h,
          vertical: 51.v,
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
          "Adicionar Despesas",
          style: CustomTextStyles.titleMediumWhiteA700SemiBold18,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewSection(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 444.v,
        child: TabBarView(
          controller: tabviewController,
          children: [
            AdicionarDespesasPage(),
            AdicionarDespesasPage(),
          ],
        ),
      ),
    );
  }
}
