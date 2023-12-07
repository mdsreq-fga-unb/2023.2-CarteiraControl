import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/presentation/adicionar_ganhos_page/adicionar_ganhos_page.dart';
import 'package:flutter/material.dart';

class AdicionarGanhosTabContainerScreen extends StatefulWidget {
  const AdicionarGanhosTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AdicionarGanhosTabContainerScreenState createState() =>
      AdicionarGanhosTabContainerScreenState();
}

class AdicionarGanhosTabContainerScreenState
    extends State<AdicionarGanhosTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              _buildAdicionarGanhosSection(context),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40.v,
                          width: 253.h,
                          margin: EdgeInsets.only(left: 20.h),
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
                              color: appTheme.gray10002,
                              borderRadius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Transactions",
                                ),
                              ),
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
  Widget _buildAdicionarGanhosSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 129.h,
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
          "Adicionar Ganhos",
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
            AdicionarGanhosPage(),
            AdicionarGanhosPage(),
            AdicionarGanhosPage(),
          ],
        ),
      ),
    );
  }
}
