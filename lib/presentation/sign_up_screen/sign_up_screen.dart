import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                              width: 127.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Sign UP".toUpperCase(),
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Create Account",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 19.v),
                            _buildUserName(context),
                            SizedBox(height: 19.v),
                            _buildPassword(context),
                            SizedBox(height: 17.v),
                            _buildSignUpButton(context),
                            SizedBox(height: 29.v),
                            Text(
                              "Sign-up with Others",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 4.v),
                            _buildSignUpWithGoogleButton(context),
                            SizedBox(height: 10.v),
                            _buildSignUpWithFacebookButton(context),
                            SizedBox(height: 43.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean(context);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Already have an account?  ",
                                      style:
                                          CustomTextStyles.bodySmallBlack900_1,
                                    ),
                                    TextSpan(
                                      text: "Login",
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
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
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
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
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
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      width: 84.h,
      text: "Sign up",
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign up with Google",
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
  Widget _buildSignUpWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign up with Facebook",
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

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
