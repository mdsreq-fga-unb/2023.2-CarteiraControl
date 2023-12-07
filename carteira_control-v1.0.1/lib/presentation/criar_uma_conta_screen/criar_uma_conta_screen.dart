import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:carteira_control/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CriarUmaContaScreen extends StatelessWidget {
  CriarUmaContaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pedroSampaioController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgCriarUmaConta,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 50.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  SizedBox(
                    width: 237.h,
                    child: Text(
                      "Comece a economizar o seu dinheiro",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall!.copyWith(
                        height: 1.06,
                      ),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  _buildPedroSampaio(context),
                  SizedBox(height: 24.v),
                  _buildEmail(context),
                  SizedBox(height: 24.v),
                  _buildSixtyThree(context),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 323.h,
                      margin: EdgeInsets.only(right: 46.h),
                      child: Text(
                        "Sua senha deve conter 8 caracteres, 1 letra maiúscula e 1 número.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallLightblueA700,
                      ),
                    ),
                  ),
                  _buildSixtyFour(context),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "As senhas não conferem. Repita o processo.",
                        style: CustomTextStyles.bodySmallRed500,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildSignUp(context),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 82.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Já possui uma conta? ",
                              style: CustomTextStyles.bodyMediumGray80014,
                            ),
                            TextSpan(
                              text: "Log in",
                              style: CustomTextStyles.bodyMediumLightblueA700,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPedroSampaio(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: CustomFloatingTextField(
        controller: pedroSampaioController,
        labelText: "Seu nome",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "Seu nome",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: CustomFloatingTextField(
        controller: emailController,
        labelText: "Seu E-mail",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "Seu E-mail",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return SizedBox(
      height: 64.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 10.v),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineLightBlueA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "123456#Abcdefgh",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 19.v,
                    width: 22.h,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 114.h,
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlue,
              child: Text(
                " Digite sua senha",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmeSuaSenha(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 129.h,
      text: "Confirme sua senha",
      margin: EdgeInsets.only(left: 16.h),
      alignment: Alignment.topLeft,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      width: 364.h,
      controller: passwordController,
      hintText: "***********",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      alignment: Alignment.bottomCenter,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 18.v, 14.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgVectorLightBlueA700,
          height: 15.v,
          width: 22.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return SizedBox(
      height: 64.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildConfirmeSuaSenha(context),
          _buildPassword(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 67.v,
      text: "sign up",
      margin: EdgeInsets.only(right: 12.h),
      buttonStyle: CustomButtonStyles.none,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700SemiBold18_1,
      alignment: Alignment.centerLeft,
    );
  }
}
