import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/alert_item_widget.dart'; // ignore_for_file: must_be_immutable

class AlertDraweritem extends StatelessWidget {
  const AlertDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: SizeUtils.height,
        width: 284.h,
        decoration: AppDecoration.fillGray,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                top: 55.v,
              ),
              child: CustomIconButton(
                height: 35.v,
                width: 36.h,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                top: 106.v,
              ),
              child: CustomIconButton(
                height: 35.v,
                width: 36.h,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                top: 160.v,
              ),
              child: CustomIconButton(
                height: 35.v,
                width: 36.h,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                top: 214.v,
              ),
              child: CustomIconButton(
                height: 35.v,
                width: 36.h,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 26.v,
                ),
                child: Text(
                  "priority Alerts".toUpperCase(),
                  style: CustomTextStyles.labelLargeLime50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 281.v,
                ),
                child: Text(
                  "general Alerts".toUpperCase(),
                  style: CustomTextStyles.labelLargeLime50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 98.v),
                child: SizedBox(
                  width: 242.h,
                  child: Divider(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 152.v),
                child: SizedBox(
                  width: 242.h,
                  child: Divider(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 206.v),
                child: SizedBox(
                  width: 242.h,
                  child: Divider(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 259.v),
                child: SizedBox(
                  width: 242.h,
                  child: Divider(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 259.v,
                    width: 242.h,
                    margin: EdgeInsets.only(
                      top: 371.v,
                      bottom: 10.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 43.v),
                            child: SizedBox(
                              width: 242.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 97.v),
                            child: SizedBox(
                              width: 242.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        _buildAlert(context)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlueGray,
                    child: Container(
                      height: 86.v,
                      width: 8.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 268.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 35.v,
                      width: 36.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineErrorContainer,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 13.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "You have finally caught up!",
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAlert(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.v),
            child: SizedBox(
              width: 242.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.lightGreen700,
              ),
            ),
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return AlertItemWidget();
        },
      ),
    );
  }
}
