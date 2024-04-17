import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lime50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAccountStackView(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "General".toUpperCase(),
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Help Centre",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 17.h,
                  endIndent: 16.h,
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "Saved Places",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 17.h,
                  endIndent: 16.h,
                ),
              ),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Activities",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 17.h,
                  endIndent: 16.h,
                ),
              ),
              SizedBox(height: 44.v),
              CustomElevatedButton(
                width: 70.h,
                text: "Back",
                margin: EdgeInsets.only(right: 15.h),
                buttonTextStyle: theme.textTheme.labelLarge!,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountStackView(BuildContext context) {
    return SizedBox(
      height: 305.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 242.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray40001,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 116.h,
                bottom: 60.v,
              ),
              child: Text(
                "name".toUpperCase(),
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 149.h,
                bottom: 41.v,
              ),
              child: Text(
                "Email".toUpperCase(),
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 126.v,
              width: 131.h,
              margin: EdgeInsets.only(left: 30.h),
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder65,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 64.v,
                width: 70.h,
                alignment: Alignment.topCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}
