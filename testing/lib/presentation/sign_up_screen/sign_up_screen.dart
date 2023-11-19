import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:cesar_s_application1/widgets/custom_outlined_button.dart';
import 'package:cesar_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
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
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h, right: 46.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true)),
                      SizedBox(height: 17.v),
                      CustomOutlinedButton(
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.only(left: 44.h, right: 46.h),
                          onPressed: () {
                            onTapVerify(context);
                          }),
                      SizedBox(height: 221.v),
                      _buildSignUpStack(context)
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
            ])));
  }

  /// Section Widget
  Widget _buildSignUpStack(BuildContext context) {
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

  /// Navigates to the verifyScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verifyScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapImgBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
