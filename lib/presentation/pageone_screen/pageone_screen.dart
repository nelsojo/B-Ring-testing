import 'package:b_ring_0/core/app_export.dart';
import 'package:flutter/material.dart';

class PageoneScreen extends StatelessWidget {
  const PageoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Text("Sensors", style: theme.textTheme.headlineLarge),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        onBackPressed(context);
                      },
                      child: Text("Back", style: theme.textTheme.headlineLarge))
                ]))));
  }

  /// Navigates back to the previous screen.
  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
