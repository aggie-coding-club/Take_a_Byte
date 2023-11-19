import 'package:cesar_s_application1/core/app_export.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:cesar_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:cesar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 751.v),
            child: Container(
              height: 71.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 111.v,
      centerTitle: true,
      title: SizedBox(
        height: 111.v,
        width: 400.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgUnion,
              margin: EdgeInsets.only(top: 54.v),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgByteChocolate2,
              margin: EdgeInsets.only(
                left: 118.h,
                right: 128.h,
                bottom: 40.v,
              ),
            ),
            AppbarSubtitle(
              text: "lbl_text_here".tr,
              margin: EdgeInsets.fromLTRB(83.h, 55.v, 93.h, 1.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
