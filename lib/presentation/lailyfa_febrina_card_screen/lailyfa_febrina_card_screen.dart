import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardScreen extends StatelessWidget {
  LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

  TextEditingController cardHolderNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(children: [
                                _buildCreditCard(context),
                                SizedBox(height: 23.v),
                                _buildCardNumber(context),
                                SizedBox(height: 24.v),
                                _buildExpirationDate(context),
                                SizedBox(height: 29.v),
                                _buildSecurityCode(context),
                                SizedBox(height: 23.v),
                                _buildCardHolder(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildSave(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "msg_lailyfa_febrina".tr,
            margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCreditCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVolume,
                  height: 22.v,
                  width: 36.h,
                  margin: EdgeInsets.only(left: 3.h)),
              SizedBox(height: 30.v),
              Text("msg_6326_9124".tr, style: theme.textTheme.headlineSmall),
              SizedBox(height: 17.v),
              Row(children: [
                Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("lbl_card_holder".tr,
                            style: CustomTextStyles
                                .bodySmallOnPrimaryContainer10))),
                Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text("lbl_card_save".tr,
                            style: CustomTextStyles
                                .bodySmallOnPrimaryContainer10)))
              ]),
              SizedBox(height: 1.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text("lbl_lailyfa_febrina".tr,
                        style: CustomTextStyles.labelMediumOnPrimaryContainer)),
                Padding(
                    padding: EdgeInsets.only(left: 32.h, bottom: 3.v),
                    child: Text("lbl_06_24".tr,
                        style: CustomTextStyles.labelMediumOnPrimaryContainer))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_card_number".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: cardNumberController,
              hintText: "msg_1231_2312_3123".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_expiration_date".tr,
              style: theme.textTheme.titleSmall)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: expirationDateController,
              hintText: "lbl_12_12".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildSecurityCode(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_security_code".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: securityCodeController,
          hintText: "lbl_1219".tr,
          hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v))
    ]);
  }

  /// Section Widget
  Widget _buildCardHolder(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child:
              Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: cardHolderNameController,
              hintText: "lbl_lailyfa_febrina".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapSave(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}
