import 'package:flutter/material.dart';
import 'package:b_ring_0/presentation/b_ring_protoype_screen/b_ring_protoype_screen.dart';
import 'package:b_ring_0/presentation/spash_screen/spash_screen.dart';
import 'package:b_ring_0/presentation/login_screen/login_screen.dart';
import 'package:b_ring_0/presentation/pageone_screen/pageone_screen.dart';
import 'package:b_ring_0/presentation/alert_page_screen/alert_page_screen.dart';
import 'package:b_ring_0/presentation/graphs_page_screen/graphs_page_screen.dart';
import 'package:b_ring_0/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bRingProtoypeScreen = '/b_ring_protoype_screen';

  static const String spashScreen = '/spash_screen';

  static const String loginScreen = '/login_screen';

  static const String pageoneScreen = '/pageone_screen';

  static const String alertPageScreen = '/alert_page_screen';

  static const String graphsPageScreen = '/graphs_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bRingProtoypeScreen: (context) => BRingProtoypeScreen(),
    spashScreen: (context) => SpashScreen(),
    loginScreen: (context) => LoginScreen(),
    pageoneScreen: (context) => PageoneScreen(),
    alertPageScreen: (context) => AlertPageScreen(),
    graphsPageScreen: (context) => GraphsPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
