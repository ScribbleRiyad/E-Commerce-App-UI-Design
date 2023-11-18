import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_title_edittext.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(indent: 6.h),
                      SizedBox(height: 26.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtNikeAirMaxReact(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("msg_nike_air_max_2703".tr,
                                  style: theme.textTheme.bodySmall))),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2703".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2704".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax2".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_97".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleEdittext(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_nike_air_max".tr,
            controller: searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMicIcon, margin: EdgeInsets.all(16.h))
        ]);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapTxtNikeAirMaxReact(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}
