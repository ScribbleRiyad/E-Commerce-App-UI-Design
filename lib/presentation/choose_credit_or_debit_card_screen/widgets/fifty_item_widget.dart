import 'package:ecommerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyItemWidget extends StatelessWidget {
  const FiftyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
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
          SizedBox(height: 9.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "lbl_dominic_ovo".tr,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 44.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_06_24".tr,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
