import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 36.v),
                    child: Column(children: [
                      Container(
                          width: 382.h,
                          margin: EdgeInsets.symmetric(horizontal: 24.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 151.h, vertical: 212.v),
                          decoration: AppDecoration.fillGray,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 47.v),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .img584abf432912007028bd9337,
                                    height: 72.adaptSize,
                                    width: 72.adaptSize)
                              ])),
                      SizedBox(height: 36.v),
                      GestureDetector(
                          onTap: () {
                            onTapView(context);
                          },
                          child: Container(
                              height: 84.adaptSize,
                              width: 84.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.gray600.withOpacity(0.52),
                                  borderRadius: BorderRadius.circular(42.h),
                                  border: Border.all(
                                      color: theme
                                          .colorScheme.onSecondaryContainer,
                                      width: 3.h)))),
                      SizedBox(height: 46.v),
                      _buildCamera(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 116.v,
            width: 402.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 59.v, right: 2.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 123.h, right: 126.h, bottom: 45.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.img5588342,
                  margin: EdgeInsets.only(left: 355.h, top: 12.v, bottom: 57.v),
                  onTap: () {
                    onTapImage(context);
                  }),
              AppbarTitleImage(
                  imagePath: ImageConstant.img,
                  margin: EdgeInsets.only(top: 4.v, right: 353.h, bottom: 51.v),
                  onTap: () {
                    onTapImage1(context);
                  }),
              AppbarSubtitle(
                  text: "lbl_take_a_photo".tr,
                  margin: EdgeInsets.fromLTRB(71.h, 59.v, 77.h, 2.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCamera(BuildContext context) {
    return SizedBox(
        height: 72.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 47.v,
              width: 63.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 24.h, top: 11.v)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 71.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.gray600))),
          CustomImageView(
              imagePath: ImageConstant.imgBackArrow,
              height: 72.v,
              width: 48.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 8.h),
              onTap: () {
                onTapImgBackArrow(context);
              })
        ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
