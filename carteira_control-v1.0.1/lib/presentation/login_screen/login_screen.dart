import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController abcdefgController = TextEditingController();

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
                ImageConstant.imgLogin,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 138.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 54.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 78.h),
                      child: Text(
                        "Bem Vindo!",
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomFloatingTextField(
                    controller: emailController,
                    labelText: "Seu E-mail",
                    labelStyle: theme.textTheme.titleSmall!,
                    hintText: "Seu E-mail",
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 37.v),
                  CustomFloatingTextField(
                    controller: abcdefgController,
                    labelText: "Sua senha",
                    labelStyle: theme.textTheme.titleSmall!,
                    hintText: "Sua senha",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 19.v,
                        width: 22.h,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 64.v,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                    height: 67.v,
                    text: "Log in",
                    margin: EdgeInsets.only(right: 10.h),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumWhiteA700SemiBold18_1,
                  ),
                  SizedBox(height: 18.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Não tem uma conta? ",
                          style: CustomTextStyles.bodyMediumGray80014,
                        ),
                        TextSpan(
                          text: "Sign up",
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
