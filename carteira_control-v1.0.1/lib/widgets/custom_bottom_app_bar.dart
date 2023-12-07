import 'package:carteira_control/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHomeF1,
        activeIcon: ImageConstant.imgHomeF1,
        type: BottomBarEnum.Homef1,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgBarChart1,
      activeIcon: ImageConstant.imgBarChart1,
      type: BottomBarEnum.Barchart1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgWallet1,
      activeIcon: ImageConstant.imgWallet1,
      type: BottomBarEnum.Wallet1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser11,
      activeIcon: ImageConstant.imgUser11,
      type: BottomBarEnum.User11,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 80.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        color: appTheme.gray500,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Homef1,
  Barchart1,
  Wallet1,
  User11,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
