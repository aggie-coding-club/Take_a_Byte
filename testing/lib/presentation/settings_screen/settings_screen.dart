import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:cesar_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 115.v),
                    child: Column(children: [
                      Container(
                          width: 339.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 6.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Text("lbl_name".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 17.v),
                      Container(
                          width: 339.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 8.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Text("lbl_weight".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 17.v),
                      Container(
                          width: 339.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 8.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Text("lbl_height".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 17.v),
                      Container(
                          width: 339.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 6.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Text("lbl_email".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgByteChocolate2,
                                    height: 77.v,
                                    width: 158.h),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1,
                                    height: 77.v,
                                    width: 163.h,
                                    margin: EdgeInsets.only(left: 19.h))
                              ])),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h, right: 46.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: 76.v,
                                    width: 161.h),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage3,
                                    height: 76.v,
                                    width: 163.h,
                                    margin: EdgeInsets.only(left: 19.h))
                              ])),
                      SizedBox(height: 64.v),
                      CustomOutlinedButton(
                          text: "lbl_save".tr,
                          margin: EdgeInsets.symmetric(horizontal: 45.h)),
                      SizedBox(height: 17.v),
                      _buildSettings(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 116.v,
            width: 400.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 59.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.img60x49,
                  margin: EdgeInsets.only(top: 7.v, right: 351.h, bottom: 48.v),
                  onTap: () {
                    onTapImage(context);
                  }),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(88.h, 57.v, 88.h, 4.v),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_welcome2".tr,
                                style: CustomTextStyles.displaySmallWhiteA700),
                            TextSpan(
                                text: "lbl".tr,
                                style: CustomTextStyles
                                    .displaySmallWhiteA700Regular)
                          ]),
                          textAlign: TextAlign.left))),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 123.h, right: 124.h, bottom: 45.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return SizedBox(
        height: 119.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 71.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.gray600))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBackArrow,
                        height: 72.v,
                        width: 48.h,
                        margin: EdgeInsets.only(top: 24.v, bottom: 22.v),
                        onTap: () {
                          onTapImgBackArrow(context);
                        }),
                    Container(
                        height: 119.adaptSize,
                        width: 119.adaptSize,
                        margin: EdgeInsets.only(left: 102.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 17.v),
                        decoration: AppDecoration.fillGray600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder59),
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.img584abf432912007028bd9337,
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            alignment: Alignment.topCenter,
                            onTap: () {
                              onTapImgImage(context);
                            }))
                  ])))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }
}
