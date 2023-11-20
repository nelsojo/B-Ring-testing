import 'package:b_ring_0/core/app_export.dart';
import 'package:b_ring_0/widgets/app_bar/appbar_leading_image.dart';
import 'package:b_ring_0/widgets/app_bar/appbar_title.dart';
import 'package:b_ring_0/widgets/app_bar/appbar_trailing_image.dart';
import 'package:b_ring_0/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BRingProtoypeScreen extends StatelessWidget {
  const BRingProtoypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 87.h, vertical: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlerts(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 46.h),
                              child: Text("Alerts",
                                  style: theme.textTheme.headlineLarge))),
                      Container(
                          height: 180.adaptSize,
                          width: 180.adaptSize,
                          padding: EdgeInsets.all(46.h),
                          decoration: AppDecoration.fillBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgWarning,
                              height: 88.adaptSize,
                              width: 88.adaptSize,
                              alignment: Alignment.center)),
                      SizedBox(height: 23.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSensors(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Text("Sensors",
                                  style: theme.textTheme.headlineLarge))),
                      Container(
                          height: 180.adaptSize,
                          width: 180.adaptSize,
                          padding: EdgeInsets.symmetric(
                              horizontal: 45.h, vertical: 37.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVectorYellow600,
                              height: 105.v,
                              width: 90.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 40.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtGraphs(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("Graphs",
                                  style: theme.textTheme.headlineLarge))),
                      Container(
                          height: 180.adaptSize,
                          width: 180.adaptSize,
                          padding: EdgeInsets.all(26.h),
                          decoration: AppDecoration.fillBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgIconDotted,
                              height: 126.adaptSize,
                              width: 126.adaptSize,
                              alignment: Alignment.center)),
                      SizedBox(height: 3.v),
                      GestureDetector(
                          onTap: () {
                            gotoSplash(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 80.h),
                              child: Text("*",
                                  style: theme.textTheme.headlineSmall)))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(left: 13.h, top: 12.v, bottom: 12.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Dashboard"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch, margin: EdgeInsets.all(16.h))
        ],
        styleType: Style.bgFill);
  }

  /// Navigates to the alertPageScreen when the action is triggered.
  onTapTxtAlerts(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.alertPageScreen);
  }

  /// Navigates to the pageoneScreen when the action is triggered.
  onTapTxtSensors(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageoneScreen);
  }

  /// Navigates to the graphsPageScreen when the action is triggered.
  onTapTxtGraphs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.graphsPageScreen);
  }

  /// Navigates to the spashScreen when the action is triggered.
  gotoSplash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spashScreen);
  }
}
