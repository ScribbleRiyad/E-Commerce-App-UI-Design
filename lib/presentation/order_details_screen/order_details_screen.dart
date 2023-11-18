import '../order_details_screen/widgets/orderdetails_item_widget.dart';
import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(children: [
                                _buildTracking(context),
                                SizedBox(height: 24.v),
                                _buildProduct(context),
                                SizedBox(height: 24.v),
                                _buildShippingDetails(context),
                                SizedBox(height: 46.v),
                                _buildPaymentDetails(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildNotifyMe(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_order_details".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildTracking(BuildContext context) {
    return SizedBox(
        height: 57.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 96.h,
                            child: Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(1))),
                        SizedBox(
                            width: 96.h,
                            child: Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(1))),
                        SizedBox(width: 96.h, child: Divider())
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_packing".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_shipping".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_arriving".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckmarkBlue50,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 13.h)),
                          SizedBox(height: 13.v),
                          Text("lbl_success".tr,
                              style: theme.textTheme.bodySmall)
                        ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildProduct(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_product".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 8.v);
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return OrderdetailsItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildShippingDetails(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("msg_shipping_details".tr,
              style: theme.textTheme.titleSmall)),
      SizedBox(height: 11.v),
      Container(
          margin: EdgeInsets.only(left: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
          decoration: AppDecoration.outlineBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            _buildShipping(context,
                shipping: "lbl_date_shipping".tr,
                pOSReggular: "msg_january_16_2020".tr),
            SizedBox(height: 15.v),
            _buildShipping(context,
                shipping: "lbl_shipping".tr,
                pOSReggular: "lbl_pos_reggular".tr),
            SizedBox(height: 14.v),
            _buildShipping(context,
                shipping: "lbl_no_resi".tr, pOSReggular: "lbl_000192848573".tr),
            SizedBox(height: 15.v),
            _buildShipping(context,
                shipping: "lbl_address".tr,
                pOSReggular: "msg_2727_new_owerri".tr)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPaymentDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_payment_details".tr,
                  style: theme.textTheme.titleSmall)),
          SizedBox(height: 11.v),
          Container(
              padding: EdgeInsets.all(15.h),
              decoration: AppDecoration.outlineBlue
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildShipping1(context,
                        shipping: "lbl_items_3".tr, price: "lbl_598_86".tr),
                    SizedBox(height: 16.v),
                    _buildShipping1(context,
                        shipping: "lbl_shipping".tr, price: "lbl_40_00".tr),
                    SizedBox(height: 14.v),
                    _buildShipping1(context,
                        shipping: "lbl_import_charges".tr,
                        price: "lbl_128_00".tr),
                    SizedBox(height: 12.v),
                    Divider(),
                    SizedBox(height: 10.v),
                    _buildShipping1(context,
                        shipping: "lbl_total_price".tr, price: "lbl_766_86".tr)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNotifyMe(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_notify_me".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Common widget
  Widget _buildShipping(
    BuildContext context, {
    required String shipping,
    required String pOSReggular,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.5,
          child: Text(shipping,
              style: CustomTextStyles.bodySmallOnPrimary_1
                  .copyWith(color: theme.colorScheme.onPrimary))),
      Text(pOSReggular,
          style: CustomTextStyles.bodySmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))
    ]);
  }

  /// Common widget
  Widget _buildShipping1(
    BuildContext context, {
    required String shipping,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(shipping,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.blueGray300))),
      Text(price,
          style: CustomTextStyles.bodySmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
