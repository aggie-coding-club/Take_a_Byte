import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:cesar_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 28.v),
                    child: Column(children: [
                      CustomOutlinedButton(
                          text: "msg_search_for_food".tr,
                          margin: EdgeInsets.symmetric(horizontal: 45.h),
                          buttonStyle: CustomButtonStyles.outlineGray),
                      SizedBox(height: 40.v),
                      _buildSearchIngredients(context),
                      SizedBox(height: 40.v),
                      _buildSearchMeals(context),
                      SizedBox(height: 140.v),
                      _buildSearchView(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 111.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.img60x49,
            margin: EdgeInsets.fromLTRB(14.h, 7.v, 367.h, 43.v),
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
                  text: "lbl_food".tr,
                  margin: EdgeInsets.fromLTRB(140.h, 54.v, 149.h, 2.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSearchIngredients(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            height: 214.v,
            width: 382.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("lbl_ingrdients".tr,
                      style: CustomTextStyles.headlineSmallPrimary)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                      onTap: () {
                        onTapTwelve(context);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 73.h, vertical: 37.v),
                          decoration: AppDecoration.fillGray,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 36.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text("lbl_protein_1g".tr,
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 1.v),
                                Text("lbl_carbs_40g".tr,
                                    style: theme.textTheme.titleLarge)
                              ])))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 38.v, right: 45.h),
                      child: Text("lbl_banana".tr,
                          style: theme.textTheme.displaySmall))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 82.v, right: 61.h),
                      child: Text("lbl_calories_400".tr,
                          style: theme.textTheme.titleLarge))),
              CustomImageView(
                  imagePath: ImageConstant.img176x117,
                  height: 176.v,
                  width: 117.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 23.h, bottom: 3.v))
            ])));
  }

  /// Section Widget
  Widget _buildSearchMeals(BuildContext context) {
    return SizedBox(
        height: 209.v,
        width: 382.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text("lbl_meals".tr,
                      style: CustomTextStyles.headlineSmallPrimary))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 176.v,
                  width: 382.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(top: 3.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 23.v),
                            decoration: AppDecoration.fillGray,
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.img16159165245671,
                                  height: 127.v,
                                  width: 159.h),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, top: 50.v, bottom: 14.v),
                                  child: Column(children: [
                                    Text("lbl_protein_5g".tr,
                                        style: theme.textTheme.titleLarge),
                                    SizedBox(height: 1.v),
                                    Text("lbl_carbs_20g".tr,
                                        style: theme.textTheme.titleLarge)
                                  ]))
                            ]))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 65.h),
                            child: Text("lbl_pasta".tr,
                                style: theme.textTheme.displaySmall))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 43.v, right: 62.h),
                            child: Text("lbl_calories_620".tr,
                                style: theme.textTheme.titleLarge)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildSearchView(BuildContext context) {
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTwelve(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }
}
