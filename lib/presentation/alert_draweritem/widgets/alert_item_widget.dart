import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class AlertItemWidget extends StatelessWidget {
  const AlertItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomIconButton(
        height: 35.v,
        width: 36.h,
        padding: EdgeInsets.all(8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
        ),
      ),
    );
  }
}
