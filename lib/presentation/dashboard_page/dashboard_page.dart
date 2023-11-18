import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/eightysix_item_widget.dart';
import '../dashboard_page/widgets/fsnikeairmax_item_widget.dart';
import '../dashboard_page/widgets/msnikeairmax_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/app_export.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ecommerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildEightySix(context),
                              SizedBox(height: 16.v),
                              Container(
                                  height: 8.v,
                                  margin: EdgeInsets.only(left: 135.h),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: sliderIndex,
                                      count: 1,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor: theme
                                              .colorScheme.primary
                                              .withOpacity(1),
                                          dotColor: appTheme.blue50,
                                          dotHeight: 8.v,
                                          dotWidth: 8.h))),
                              SizedBox(height: 25.v),
                              _buildCategories(context),
                              SizedBox(height: 23.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: _buildFlashSaleHeader(context,
                                      flashSale: "lbl_flash_sale".tr,
                                      seeMoreLink: "lbl_see_more".tr,
                                      onTapFlashSaleHeader: () {
                                    onTapFlashSaleHeader(context);
                                  })),
                              SizedBox(height: 12.v),
                              _buildFSNikeAirMax(context),
                              SizedBox(height: 23.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: _buildFlashSaleHeader(context,
                                      flashSale: "lbl_mega_sale".tr,
                                      seeMoreLink: "lbl_see_more".tr)),
                              SizedBox(height: 10.v),
                              _buildMSNikeAirMax(context),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedProduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              SizedBox(height: 16.v),
                              _buildDashboard(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
        title: AppbarSubtitleOne(
            text: "lbl_search_product".tr,
            margin: EdgeInsets.only(left: 8.h),
            onTap: () {
              onTapSearchProduct(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDownload,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
              onTap: () {
                onTapDownload(context);
              }),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgNotificationIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgNotificationIcon(context);
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgClosePink300,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    alignment: Alignment.topRight,
                    margin:
                        EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 206.v,
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
              return EightysixItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFlashSaleHeader(context,
              flashSale: "lbl_category".tr,
              seeMoreLink: "lbl_more_category".tr, onTapSeeMoreLink: () {
            onTapTxtMoreCategoryLink(context);
          })),
      SizedBox(height: 10.v),
      SizedBox(
          height: 108.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 12.h);
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return CategoriesItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildFSNikeAirMax(BuildContext context) {
    return SizedBox(
        height: 238.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return FsnikeairmaxItemWidget(onTapProductItem: () {
                onTapProductItem(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildMSNikeAirMax(BuildContext context) {
    return SizedBox(
        height: 238.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return MsnikeairmaxItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 283.v,
                crossAxisCount: 2,
                mainAxisSpacing: 13.h,
                crossAxisSpacing: 13.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return DashboardItemWidget();
            }));
  }

  /// Common widget
  Widget _buildFlashSaleHeader(
    BuildContext context, {
    required String flashSale,
    required String seeMoreLink,
    Function? onTapFlashSaleHeader,
    Function? onTapSeeMoreLink,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFlashSaleHeader!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(flashSale,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
          GestureDetector(onTap: () {
            onTapSeeMoreLink!.call();
          }),
          Text(seeMoreLink,
              style: CustomTextStyles.titleSmallPrimary
                  .copyWith(color: theme.colorScheme.primary.withOpacity(1)))
        ]));
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapSearchProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  onTapDownload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapImgNotificationIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  onTapTxtMoreCategoryLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listCategoryScreen);
  }

  /// Navigates to the superFlashSaleScreen when the action is triggered.
  onTapFlashSaleHeader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.superFlashSaleScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  onTapProductItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }
}
