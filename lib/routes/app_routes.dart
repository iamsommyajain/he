import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/landing_page_screen/landing_page_screen.dart';
import '../presentation/volunteer_page_screen/volunteer_page_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String landingPageScreen = '/landing_page_screen';

  static const String volunteerPageScreen = '/volunteer_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    landingPageScreen: (context) => LandingPageScreen(),
    volunteerPageScreen: (context) => VolunteerPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LandingPageScreen()
  };
}
