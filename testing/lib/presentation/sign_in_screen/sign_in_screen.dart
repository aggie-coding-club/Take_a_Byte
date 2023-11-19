import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:cesar_s_application1/widgets/custom_elevated_button.dart';
import 'package:cesar_s_application1/widgets/custom_outlined_button.dart';
import 'package:cesar_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(flex: 45),
                          _buildEmail(context),
                          SizedBox(height: 21.v),
                          _buildPassword(context),
                          SizedBox(height: 21.v),
                          _buildStartTracking(context),
                          SizedBox(height: 9.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtSignUp(context);
                              },
                              child: Text("lbl_sign_up".tr,
                                  style: theme.textTheme.labelMedium)),
                          SizedBox(height: 14.v),
                          _buildContinueWithFacebook(context),
                          SizedBox(height: 19.v),
                          _buildContinueWithGoogle(context),
                          SizedBox(height: 19.v),
                          _buildContinueWithApple(context),
                          Spacer(flex: 54),
                          Container(
                              height: 71.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray600))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 117.v,
        centerTitle: true,
        title: SizedBox(
            height: 117.53.v,
            width: 400.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgUnion,
                  margin: EdgeInsets.only(top: 59.v, bottom: 1.v)),
              AppbarSubtitle(
                  text: "lbl_get_signed_in".tr,
                  margin: EdgeInsets.only(left: 70.h, top: 63.v, right: 73.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgByteChocolate2,
                  margin:
                      EdgeInsets.only(left: 123.h, right: 124.h, bottom: 46.v))
            ])));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 45.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 45.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildStartTracking(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_start_tracking".tr,
        margin: EdgeInsets.symmetric(horizontal: 45.h));
  }

  /// Section Widget
  Widget _buildContinueWithFacebook(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_continue_with_facebook".tr,
        margin: EdgeInsets.symmetric(horizontal: 45.h),
        leftIcon: Container(
            padding: EdgeInsets.all(1.h),
            margin: EdgeInsets.only(right: 14.h),
            decoration: BoxDecoration(color: appTheme.blueA400),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 22.adaptSize,
                width: 22.adaptSize)));
  }

  /// Section Widget
  Widget _buildContinueWithGoogle(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_continue_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 45.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 15.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoGoogleg48dp,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL9,
        buttonTextStyle: CustomTextStyles.titleMediumRobotoPrimary);
  }

  /// Section Widget
  Widget _buildContinueWithApple(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_continue_with_apple".tr,
        margin: EdgeInsets.symmetric(horizontal: 45.h),
        leftIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.v),
            margin: EdgeInsets.only(right: 14.h),
            decoration:
                BoxDecoration(color: theme.colorScheme.primary.withOpacity(1)),
            child: CustomImageView(
                imagePath: ImageConstant.imgPath4, height: 22.v, width: 19.h)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL91,
        buttonTextStyle: CustomTextStyles.titleMediumSFProDisplay);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
