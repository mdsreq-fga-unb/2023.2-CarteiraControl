import 'package:carteira_control/core/app_export.dart';
import 'package:carteira_control/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 587.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup137,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAHumanSitting,
                      height: 400.v,
                      width: 330.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 27.h,
                        bottom: 73.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDreamshaperV7,
                      height: 587.v,
                      width: 414.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              SizedBox(
                width: 286.h,
                child: Text(
                  "gaste de forma mais inteligente. economize mais.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displaySmall!.copyWith(
                    height: 1.06,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                height: 65.v,
                text: "Vamos começar!",
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 29.h,
                ),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientTealToLightBlueADecoration,
                buttonTextStyle:
                    CustomTextStyles.titleMediumWhiteA700SemiBold18_1,
              ),
              SizedBox(height: 25.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Já possui uma conta? ",
                      style: CustomTextStyles.bodyMediumGray80014,
                    ),
                    TextSpan(
                      text: "Log in",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
