import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSuccess(context),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          text: "lbl_back_to_order".tr,
                          onPressed: () {
                            onTapBackToOrder(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildSuccess(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 55.h),
        child: Column(children: [
          CustomIconButton(
              height: 72.adaptSize,
              width: 72.adaptSize,
              padding: EdgeInsets.all(24.h),
              decoration: IconButtonStyleHelper.outlinePrimary,
              child: CustomImageView(imagePath: ImageConstant.imgCheckmark)),
          SizedBox(height: 15.v),
          Text("lbl_success".tr,
              style: CustomTextStyles.headlineSmallOnPrimary),
          SizedBox(height: 11.v),
          Opacity(
              opacity: 0.5,
              child: Text("msg_thank_you_for_shopping".tr,
                  style: CustomTextStyles.bodySmallOnPrimary_1))
        ]));
  }

  /// Navigates to the orderScreen when the action is triggered.
  onTapBackToOrder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderScreen);
  }
}
