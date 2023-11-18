import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleEdittextOne extends StatelessWidget {
  AppbarTitleEdittextOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 291.h,
        controller: controller,
        hintText: "lbl_nike_air_max".tr,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 14.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
        filled: false,
      ),
    );
  }
}
