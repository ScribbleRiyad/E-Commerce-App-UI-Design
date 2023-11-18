import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteproductItemWidget extends StatelessWidget {
  FavoriteproductItemWidget({
    Key? key,
    this.onTapProductItem,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductItem!.call();
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBlue50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductImage2,
              height: 133.adaptSize,
              width: 133.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 107.h,
              child: Text(
                "msg_nike_air_max_270".tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 4,
            ),
            SizedBox(height: 18.v),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_299_43".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 91.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_534_33".tr,
                            style: CustomTextStyles.bodySmall10.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "lbl_24_off".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTrashIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    top: 14.v,
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
