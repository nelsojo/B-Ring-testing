import 'package:b_ring_0/core/app_export.dart';
import 'package:b_ring_0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController enterhereController = TextEditingController();

  TextEditingController enterhereController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lime800,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 72.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 36.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgTwemojiHoneybee,
                          height: 103.v,
                          width: 109.h,
                          onTap: () {
                            gotoSplash(context);
                          }),
                      Spacer(),
                      Text("Username", style: theme.textTheme.displayMedium),
                      SizedBox(height: 14.v),
                      CustomTextFormField(
                          controller: enterhereController,
                          hintText: "enter here"),
                      SizedBox(height: 59.v),
                      Text("Password", style: theme.textTheme.displayMedium),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                          controller: enterhereController1,
                          hintText: "enter here",
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 69.v),
                      GestureDetector(
                          onTap: () {
                            gotoDash(context);
                          },
                          child: Text("Login",
                              style: theme.textTheme.displayMedium))
                    ]))));
  }

  /// Navigates to the spashScreen when the action is triggered.
  gotoSplash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spashScreen);
  }

  /// Navigates to the bRingProtoypeScreen when the action is triggered.
  gotoDash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bRingProtoypeScreen);
  }
}
