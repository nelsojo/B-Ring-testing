import 'package:b_ring_0/core/app_export.dart';
import 'package:flutter/material.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lime800,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 118.h, top: 132.v, right: 118.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTwemojiHoneybee,
                          height: 103.v,
                          width: 109.h,
                          margin: EdgeInsets.only(left: 6.h)),
                      SizedBox(height: 49.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 83.v,
                          width: 79.h,
                          margin: EdgeInsets.only(left: 21.h)),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                gotoLogin(context);
                              },
                              child: Text("Enter ",
                                  style: theme.textTheme.displayMedium))),
                      SizedBox(height: 37.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgOpenmojiArchive,
                          height: 122.adaptSize,
                          width: 122.adaptSize,
                          margin: EdgeInsets.only(left: 15.h)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  gotoLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
