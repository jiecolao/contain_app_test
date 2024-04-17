import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController loginSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.gray40002, theme.colorScheme.onError],
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 110.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 56.h,
                          vertical: 27.v,
                        ),
                        decoration: AppDecoration.fillLime.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 62.v,
                              width: 124.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Login".toUpperCase(),
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Welcome back!",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 19.v),
                            _buildLoginSection(context),
                            SizedBox(height: 19.v),
                            _buildPasswordSection(context),
                            SizedBox(height: 17.v),
                            _buildLoginButtonSection(context),
                            SizedBox(height: 29.v),
                            Text(
                              "Login with Others",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 4.v),
                            _buildLoginWithGoogleSection(context),
                            SizedBox(height: 10.v),
                            _buildLoginWithFacebookSection(context),
                            SizedBox(height: 43.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount(context);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Don’t have an account?  ",
                                      style:
                                          CustomTextStyles.bodySmallBlack900_1,
                                    ),
                                    TextSpan(
                                      text: "Sign-Up",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 81.v)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return CustomTextFormField(
      controller: loginSectionController,
      hintText: "Username",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(12.h, 9.v, 4.h, 9.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrame,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 35.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return CustomTextFormField(
      controller: passwordSectionController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(12.h, 9.v, 4.h, 9.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrameErrorcontainer,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 35.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildLoginButtonSection(BuildContext context) {
    return CustomElevatedButton(
      width: 84.h,
      text: "Login",
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogleSection(BuildContext context) {
    return CustomOutlinedButton(
      text: "Login with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle1,
          height: 20.v,
          width: 19.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebookSection(BuildContext context) {
    return CustomOutlinedButton(
      text: "Login with Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
