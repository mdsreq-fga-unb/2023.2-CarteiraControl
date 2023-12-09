import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:carteira_control/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';
import '../../common/utils/validator.dart';

// ignore: must_be_immutable
class CriarUmaContaScreen extends StatelessWidget {
  CriarUmaContaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pedroSampaioController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmarSenhaController =
      TextEditingController(); // Adicionando o controlador para confirmar a senha

  final _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;

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
                      "Crie sua Conta",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall!.copyWith(
                        height: 1.06,
                      ),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  _buildNome(context),
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
                        "Sua senha deve conter 8 caracteres",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallLightblueA700,
                      ),
                    ),
                  ),
                  _buildSixtyThreeConfirm(context),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 323.h,
                      margin: EdgeInsets.only(right: 46.h),
                      child: Text(
                        "Confirme sua senha",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallLightblueA700,
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, AppRoutes.loginScreen);
                    },
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: CustomFloatingTextField(
        controller: pedroSampaioController,
        labelText: "Seu nome",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "Seu nome",
        validator: Validator.validateName,
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
        validator: Validator.validateEmail,
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
                      "",
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
              width: 364.h, // Ajustado para o mesmo valor que o SizedBox
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlue,
              child: TextFormField(
                controller: _passwordController,
                // Adicionando um campo de texto interativo
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  hintStyle: theme.textTheme.bodySmall,
                  border: InputBorder.none,
                ),
                style: theme.textTheme.bodySmall,
                validator: Validator.validatePassword,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSixtyThreeConfirm(BuildContext context) {
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
                      "",
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
              width: 364.h, // Ajustado para o mesmo valor que o SizedBox
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlue,
              child: TextFormField(
                // Adicionando um campo de texto interativo
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirme sua Senha",
                  hintStyle: theme.textTheme.bodySmall,
                  border: InputBorder.none,
                ),
                style: theme.textTheme.bodySmall,
                validator: (value) => Validator.validateConfirmPassword(
                  _passwordController.text,
                  value,
                ),
                // onEditingComplete: _onSignUpButtonPressed,
              ),
            ),
          ),
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
      onPressed: () {
        // Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
        if (_formKey.currentState?.validate() ?? false) {
          // O formulário é válido, continue com o processo de inscrição
        }
      },
    );
  }
}
