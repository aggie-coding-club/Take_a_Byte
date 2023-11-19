import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:cesar_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 143.v),
                    child: Column(children: [
                      SizedBox(
                          width: 240.h,
                          child: Text("msg_check_your_email".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargeOnPrimary)),
                      SizedBox(height: 7.v),
                      Container(
                          width: 339.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 6.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Text("lbl_code".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 22.v),
                      CustomOutlinedButton(
                          text: "msg_start_tracking".tr,
                          margin: EdgeInsets.only(left: 44.h, right: 46.h),
                          onPressed: () {
                            onTapStartTracking(context);
                          }),
                      SizedBox(height: 399.v),
                      _buildVerifyStack(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 116.v,
            width: 400.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 59.v)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 120.h, top: 61.v, right: 121.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_verify3".tr,
                                style: CustomTextStyles.displaySmallWhiteA700),
                            TextSpan(
                                text: "lbl2".tr,
                                style: CustomTextStyles
                                    .displaySmallWhiteA700Regular)
                          ]),
                          textAlign: TextAlign.left))),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 123.h, right: 124.h, bottom: 45.v))
            ])));
  }

  /// Section Widget
  Widget _buildVerifyStack(BuildContext context) {
    return SizedBox(
        height: 72.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
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
              margin: EdgeInsets.only(left: 11.h),
              onTap: () {
                onTapImgBackArrow(context);
              })
        ]));
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapStartTracking(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapImgBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
