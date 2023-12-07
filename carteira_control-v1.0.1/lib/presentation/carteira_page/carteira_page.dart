import '../carteira_page/widgets/carteira_item_widget.dart';
import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CarteiraPage extends StatefulWidget {
  const CarteiraPage({Key? key})
      : super(
          key: key,
        );

  @override
  CarteiraPageState createState() => CarteiraPageState();
}

class CarteiraPageState extends State<CarteiraPage>
    with AutomaticKeepAliveClientMixin<CarteiraPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildCarteira(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarteira(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 14.h,
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return CarteiraItemWidget();
          },
        ),
      ),
    );
  }
}
