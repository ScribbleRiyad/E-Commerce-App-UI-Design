import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/condition_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildPriceRange(context),
                                    SizedBox(height: 34.v),
                                    _buildCondition(context),
                                    SizedBox(height: 24.v),
                                    _buildBuyingFormat(context),
                                    SizedBox(height: 22.v),
                                    Text("lbl_item_location".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 13.v),
                                    _buildItemLocation(context),
                                    SizedBox(height: 25.v),
                                    _buildShowOnly(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildApply(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCloseIcon,
            margin: EdgeInsets.only(left: 18.h, top: 16.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "lbl_filter_search".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildPriceRange(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_price_range".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: CustomTextFormField(
                    controller: priceController,
                    hintText: "lbl_1_245".tr,
                    hintStyle: CustomTextStyles.labelLargeBluegray300,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h, vertical: 15.v)))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: CustomTextFormField(
                    controller: priceController1,
                    hintText: "lbl_9_344".tr,
                    hintStyle: CustomTextStyles.labelLargeBluegray300,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h, vertical: 15.v))))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildCondition(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_condition".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      Wrap(
          runSpacing: 9.v,
          spacing: 9.h,
          children: List<Widget>.generate(3, (index) => ConditionItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildBuyingFormat(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children:
              List<Widget>.generate(5, (index) => BuyingformateItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildItemLocation(BuildContext context) {
    return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children:
            List<Widget>.generate(4, (index) => ItemlocationItemWidget()));
  }

  /// Section Widget
  Widget _buildShowOnly(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_show_only".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 10.v),
      Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(11, (index) => ShowonlyItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_apply".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapApply(context);
        });
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}
