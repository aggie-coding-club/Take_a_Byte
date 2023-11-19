import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LilySFrameScreen extends StatelessWidget {
  const LilySFrameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 163.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 68.h),
                              child: Text("lbl_scan_barcode".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 40.v),
                          Padding(
                              padding: EdgeInsets.only(left: 71.h),
                              child: Text("lbl_scan_food".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 53.v),
                          Padding(
                              padding: EdgeInsets.only(left: 68.h),
                              child: Text("lbl_enter_recipe".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 49.v),
                          Padding(
                              padding: EdgeInsets.only(left: 78.h),
                              child: Text("lbl_find_item".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 220.v),
                          _buildLilySFrame(context)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 118.v,
        centerTitle: true,
        title: SizedBox(
            height: 118.61.v,
            width: 402.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 59.v, right: 2.h, bottom: 2.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 123.h, right: 126.h, bottom: 47.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.img5588342,
                  margin:
                      EdgeInsets.only(left: 355.h, top: 12.v, bottom: 59.v)),
              AppbarSubtitle(
                  text: "lbl_you_hungry".tr,
                  margin: EdgeInsets.only(left: 83.h, top: 64.v, right: 80.h))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildLilySFrame(BuildContext context) {
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

  /// Navigates to the signInScreen when the action is triggered.
  onTapImgBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
