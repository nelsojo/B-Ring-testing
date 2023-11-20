import 'package:b_ring_0/core/app_export.dart';
import 'package:flutter/material.dart';

class GraphsPageScreen extends StatelessWidget {
  const GraphsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Text("Graphs", style: theme.textTheme.headlineLarge),
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
