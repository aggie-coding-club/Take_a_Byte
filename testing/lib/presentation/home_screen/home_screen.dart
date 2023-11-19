import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Column(children: [
                      SizedBox(
                          height: 704.v,
                          width: 382.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 3.v, bottom: 528.v),
                                child: _buildThirtyThree(context,
                                    proteinValue: "lbl_protein_5g".tr,
                                    carbsValue: "lbl_carbs_20g".tr)),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 179.v, bottom: 352.v),
                                child: _buildThirtyThree(context,
                                    proteinValue: "lbl_protein_5g".tr,
                                    carbsValue: "lbl_carbs_20g".tr)),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 355.v, bottom: 176.v),
                                child: _buildThirtyThree(context,
                                    proteinValue: "lbl_protein_5g".tr,
                                    carbsValue: "lbl_carbs_20g".tr)),
                            Padding(
                                padding: EdgeInsets.only(top: 531.v),
                                child: _buildThirtyThree(context,
                                    proteinValue: "lbl_protein_5g".tr,
                                    carbsValue: "lbl_carbs_20g".tr)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 65.h),
                                    child: Text("lbl_pasta".tr,
                                        style: theme.textTheme.displaySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 176.v, right: 65.h),
                                    child: Text("lbl_pasta".tr,
                                        style: theme.textTheme.displaySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 65.h, bottom: 298.v),
                                    child: Text("lbl_pasta".tr,
                                        style: theme.textTheme.displaySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 65.h, bottom: 122.v),
                                    child: Text("lbl_pasta".tr,
                                        style: theme.textTheme.displaySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 43.v, right: 62.h),
                                    child: Text("lbl_calories_620".tr,
                                        style: theme.textTheme.titleLarge))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 219.v, right: 62.h),
                                    child: Text("lbl_calories_620".tr,
                                        style: theme.textTheme.titleLarge))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 62.h, bottom: 278.v),
                                    child: Text("lbl_calories_620".tr,
                                        style: theme.textTheme.titleLarge))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 62.h, bottom: 102.v),
                                    child: Text("lbl_calories_620".tr,
                                        style: theme.textTheme.titleLarge)))
                          ])),
                      SizedBox(height: 5.v),
                      _buildFeaturedItems(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 111.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.img,
            margin: EdgeInsets.fromLTRB(12.h, 7.v, 369.h, 43.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: SizedBox(
            height: 111.v,
            width: 400.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 54.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 118.h, right: 128.h, bottom: 40.v)),
              AppbarSubtitle(
                  text: "lbl_recent_meals".tr,
                  margin: EdgeInsets.fromLTRB(72.h, 54.v, 80.h, 2.v)),
              AppbarSubtitle(
                  text: "lbl_recent_meals".tr,
                  margin: EdgeInsets.fromLTRB(72.h, 54.v, 80.h, 2.v))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.img5588341,
              margin: EdgeInsets.fromLTRB(15.h, 12.v, 15.h, 52.v),
              onTap: () {
                onTapImage1(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFeaturedItems(BuildContext context) {
    return SizedBox(
        height: 119.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 71.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.gray600))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 119.adaptSize,
                  width: 119.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v),
                  decoration: AppDecoration.fillGray600.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder59),
                  child: CustomImageView(
                      imagePath: ImageConstant.img584abf432912007028bd9337,
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      alignment: Alignment.topCenter,
                      onTap: () {
                        onTapImgImage(context);
                      })))
        ]));
  }

  /// Common widget
  Widget _buildThirtyThree(
    BuildContext context, {
    required String proteinValue,
    required String carbsValue,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 23.v),
        decoration: AppDecoration.fillGray,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.img16159165245671,
              height: 127.v,
              width: 159.h),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 50.v, bottom: 14.v),
              child: Column(children: [
                Text(proteinValue,
                    style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.primary.withOpacity(1))),
                SizedBox(height: 1.v),
                Text(carbsValue,
                    style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.primary.withOpacity(1)))
              ]))
        ]));
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }
}
