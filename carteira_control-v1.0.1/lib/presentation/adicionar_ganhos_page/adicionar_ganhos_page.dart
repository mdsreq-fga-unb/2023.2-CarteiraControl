import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AdicionarGanhosPage extends StatefulWidget {
  const AdicionarGanhosPage({Key? key})
      : super(
          key: key,
        );

  @override
  AdicionarGanhosPageState createState() => AdicionarGanhosPageState();
}

class AdicionarGanhosPageState extends State<AdicionarGanhosPage>
    with AutomaticKeepAliveClientMixin<AdicionarGanhosPage> {
  TextEditingController selecioneACategoriaController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Column(
              children: [
                SizedBox(
                  height: 64.v,
                  width: 318.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 15.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 3.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "R 48.00",
                                  style: CustomTextStyles.titleSmall_1,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueGray400,
                                height: 20.v,
                                width: 22.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 68.h,
                          margin: EdgeInsets.only(left: 14.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Text(
                            "VALOR",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 64.v,
                  width: 318.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 15.v,
                          ),
                          decoration: AppDecoration.outlineRed.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Text(
                                "Adicionar descrição",
                                style: CustomTextStyles.titleSmall_1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 94.h,
                          margin: EdgeInsets.only(left: 14.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Text(
                            "DESCRIPTION",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Este campo não pode ficar vazio.",
                    style: CustomTextStyles.bodySmallRed500,
                  ),
                ),
                SizedBox(height: 13.v),
                CustomFloatingTextField(
                  controller: selecioneACategoriaController,
                  labelText: "CATEGORIA",
                  labelStyle: CustomTextStyles.titleSmall_1,
                  hintText: "CATEGORIA",
                  hintStyle: CustomTextStyles.titleSmall_1,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 64.v,
                  width: 318.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 15.v,
                          ),
                          decoration: AppDecoration.outlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 5.h,
                                  top: 3.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "18/11/2023",
                                  style: CustomTextStyles.titleSmallGray700_1,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgIconCalendar,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 45.h,
                          margin: EdgeInsets.only(left: 14.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Text(
                            "DATA",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.v),
                CustomElevatedButton(
                  height: 67.v,
                  text: "Adicionar",
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumWhiteA700SemiBold18_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
