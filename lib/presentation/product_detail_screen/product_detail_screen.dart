import '../product_detail_screen/widgets/fortyeight_item_widget.dart';
import '../product_detail_screen/widgets/products_item_widget.dart';
import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildProductOverview(context),
                                SizedBox(height: 22.v),
                                _buildSelectSize(context),
                                SizedBox(height: 23.v),
                                _buildSelectColor(context),
                                SizedBox(height: 24.v),
                                _buildSpecifications(context),
                                SizedBox(height: 23.v),
                                _buildReview(context),
                                SizedBox(height: 23.v),
                                _buildYouMightAlsoLike(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildAddToCart(context)));
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
            text: "msg_nike_air_max_2702".tr,
            margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNavExplore,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 15.h),
              onTap: () {
                onTapSearchIcon(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMoreIcon,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 31.h))
        ]);
  }

  /// Section Widget
  Widget _buildProductOverview(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselSlider.builder(
          options: CarouselOptions(
              height: 238.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              }),
          itemCount: 1,
          itemBuilder: (context, index, realIndex) {
            return FortyeightItemWidget();
          }),
      SizedBox(height: 16.v),
      Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 1,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary.withOpacity(1),
                      dotColor: appTheme.blue50,
                      dotHeight: 8.v,
                      dotWidth: 8.h)))),
      SizedBox(height: 15.v),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 25.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SizedBox(
                            width: 275.h,
                            child: Text("msg_nike_air_zoom_pegasus".tr,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeOnPrimary
                                    .copyWith(height: 1.50)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgDownload,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin:
                            EdgeInsets.only(left: 44.h, top: 2.v, bottom: 32.v))
                  ]))),
      SizedBox(height: 9.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: CustomRatingBar(initialRating: 4, itemSize: 16)),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_299_43".tr, style: theme.textTheme.titleLarge))
    ]);
  }

  /// Section Widget
  Widget _buildSelectSize(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_select_size".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 13.v),
      SizedBox(
          height: 48.v,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return SizesItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildSelectColor(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text("lbl_select_color".tr,
                  style: theme.textTheme.titleSmall)),
          SizedBox(height: 12.v),
          CustomImageView(
              imagePath: ImageConstant.imgColors,
              height: 48.v,
              width: 359.h,
              margin: EdgeInsets.only(left: 7.h))
        ]));
  }

  /// Section Widget
  Widget _buildSpecifications(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_specification".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 12.v),
          _buildStyle(context,
              style: "lbl_shown".tr, styleCode: "msg_laser_blue_anth".tr),
          SizedBox(height: 18.v),
          _buildStyle(context,
              style: "lbl_style".tr, styleCode: "lbl_cd0113_400".tr),
          SizedBox(height: 19.v),
          Container(
              width: 320.h,
              margin: EdgeInsets.only(right: 31.h),
              child: Text("msg_the_nike_air_max".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(height: 1.80)))
        ]));
  }

  /// Section Widget
  Widget _buildReview(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildStyle(context,
              style: "lbl_review_product".tr,
              styleCode: "lbl_see_more".tr, onTapStyleCode: () {
            onTapTxtSeeMoreLink(context);
          }),
          SizedBox(height: 8.v),
          Row(children: [
            CustomRatingBar(initialRating: 4, itemSize: 16),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("lbl_4_5".tr,
                    style: CustomTextStyles.labelMediumBluegray300)),
            Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text("lbl_5_review".tr,
                    style: CustomTextStyles.bodySmall10))
          ]),
          SizedBox(height: 16.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgProfilePicture,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(24.h)),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_james_lawson".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 4.v),
                      CustomRatingBar(initialRating: 4, itemSize: 16)
                    ]))
          ]),
          SizedBox(height: 18.v),
          SizedBox(
              width: 339.h,
              child: Text("msg_air_max_are_always".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(height: 1.80))),
          SizedBox(height: 16.v),
          SizedBox(
              height: 72.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(right: 112.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.h);
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ProductsItemWidget();
                  })),
          SizedBox(height: 16.v),
          Text("msg_december_10_2016".tr, style: CustomTextStyles.bodySmall10)
        ]));
  }

  /// Section Widget
  Widget _buildYouMightAlsoLike(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("msg_you_might_also_like".tr,
              style: CustomTextStyles.titleSmall_1)),
      SizedBox(height: 11.v),
      Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
              height: 238.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return RecomendedItemWidget();
                  })))
    ]);
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Common widget
  Widget _buildStyle(
    BuildContext context, {
    required String style,
    required String styleCode,
    Function? onTapStyleCode,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(style,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1)))),
      GestureDetector(onTap: () {
        onTapStyleCode!.call();
      }),
      Padding(
          padding: EdgeInsets.only(left: 234.h),
          child: Text(styleCode,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.blueGray300)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapSearchIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the reviewProductScreen when the action is triggered.
  onTapTxtSeeMoreLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewProductScreen);
  }
}
