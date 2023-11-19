import 'package:cesar_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray600,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 48.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgByteChocolateNobg,
                height: 197.v,
                width: 334.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
