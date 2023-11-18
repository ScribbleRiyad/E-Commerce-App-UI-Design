import 'package:ecommerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_sdg1345kjd".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_order_at_e_com".tr,
                  style: CustomTextStyles.bodySmallOnPrimary_1,
                ),
              ),
            ),
          ),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_order_status".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                ),
                Text(
                  "lbl_shipping".tr,
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_items".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                ),
                Text(
                  "msg_1_items_purchased".tr,
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "lbl_price".tr,
                    style: CustomTextStyles.bodySmallOnPrimary_1,
                  ),
                ),
                Text(
                  "lbl_299_43".tr,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
