import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/account_screen/account_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_two_screen/home_two_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String accountScreen = '/account_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    accountScreen: (context) => AccountScreen(),
    homeTwoScreen: (context) => HomeTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LogInScreen()
  };
}
