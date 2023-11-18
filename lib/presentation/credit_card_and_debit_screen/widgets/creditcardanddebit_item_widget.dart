import 'package:ecommerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreditcardanddebitItemWidget extends StatelessWidget {
  CreditcardanddebitItemWidget({
    Key? key,
    this.onTapCreditCardItem,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCreditCardItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCreditCardItem!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVolume,
              height: 22.v,
              width: 36.h,
              margin: EdgeInsets.only(left: 3.h),
            ),
            SizedBox(height: 30.v),
            Text(
              "msg_6326_9124".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 17.v),
            Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_card_holder".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 37.h),
                    child: Text(
                      "lbl_card_save".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_dominic_ovo".tr,
                    style: CustomTextStyles.labelMediumOnPrimaryContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 41.h),
                  child: Text(
                    "lbl_06_24".tr,
                    style: CustomTextStyles.labelMediumOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
