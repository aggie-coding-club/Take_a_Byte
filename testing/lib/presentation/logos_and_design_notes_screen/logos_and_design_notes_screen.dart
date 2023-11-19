import 'package:cesar_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class LogosAndDesignNotesScreen extends StatelessWidget {
  const LogosAndDesignNotesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 330.v,
                            width: 156.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 65.v,
                                    width: 156.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 49.v),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: 65.v,
                                          width: 156.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.orange50,
                                          ),
                                        ),
                                        SizedBox(height: 7.v),
                                        Container(
                                          height: 65.v,
                                          width: 156.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.deepOrange100,
                                          ),
                                        ),
                                        SizedBox(height: 7.v),
                                        Container(
                                          height: 65.v,
                                          width: 156.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.green50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 139.h,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_chocolate_text2".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnSecondaryContainer,
                                          ),
                                          TextSpan(
                                            text: " ".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "msg_vanilla_text_8c7e68".tr,
                                            style: CustomTextStyles
                                                .labelLargeGray60001,
                                          ),
                                          TextSpan(
                                            text: " ".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "msg_strawberry_text".tr,
                                            style: CustomTextStyles
                                                .labelLargeSecondaryContainer,
                                          ),
                                          TextSpan(
                                            text: " ".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "msg_mint_text_768e7b".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnPrimaryContainer,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 44.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteChocolateNobg,
                            height: 99.v,
                            width: 167.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteStrawberryNobg,
                            height: 99.v,
                            width: 167.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteVanillaNobg,
                            height: 99.v,
                            width: 167.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteMintNobg,
                            height: 99.v,
                            width: 167.h,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 242.v),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgByteChocolate2,
                            height: 118.v,
                            width: 197.h,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteVanilla,
                            height: 117.v,
                            width: 197.h,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteStrawberry,
                            height: 117.v,
                            width: 197.h,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgByteMint,
                            height: 116.v,
                            width: 197.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
