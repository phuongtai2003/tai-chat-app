import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tai_chat_app/screens/login_screen/login_screen.dart';
import 'package:tai_chat_app/screens/main_screen/main_screen.dart';

class RouteGenerator {
  static const String loginScreen = '/';
  static const String mainScreen = '/main-screen';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen.provider(),
          settings: settings,
        );
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => MainScreen.provider(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('page_not_found'.tr),
            ),
          ),
          settings: settings,
        );
    }
  }
}
