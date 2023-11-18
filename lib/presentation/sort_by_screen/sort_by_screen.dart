import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SortByScreen extends StatelessWidget {
  const SortByScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_best_match".tr,
                          style: CustomTextStyles.labelLargePrimary),
                      SizedBox(height: 37.v),
                      Text("msg_time_ending_soonest".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 35.v),
                      Text("msg_time_newly_listed".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 36.v),
                      Text("msg_price_shipping".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 36.v),
                      Text("msg_price_shipping2".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 34.v),
                      Text("msg_distance_nearest".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_sort_by".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
