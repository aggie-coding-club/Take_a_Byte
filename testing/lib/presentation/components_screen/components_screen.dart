import 'package:cesar_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class ComponentsScreen extends StatelessWidget {
  const ComponentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              Container(
                height: 103.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray600,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45.h),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
