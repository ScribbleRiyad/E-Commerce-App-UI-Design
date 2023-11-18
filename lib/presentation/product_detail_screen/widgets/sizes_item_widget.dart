import 'package:ecommerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SizesItemWidget extends StatelessWidget {
  const SizesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.adaptSize,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Text(
        "lbl_6".tr,
        style: theme.textTheme.titleSmall,
      ),
    );
  }
}
