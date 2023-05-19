import 'package:flutter/material.dart';
import 'package:ice_cream_app/screens/home_screen.dart';
import 'package:ice_cream_app/screens/welcome_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomScreen.routeName:
        return MaterialPageRoute(builder: (context) => const WelcomScreen());

      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        null;
    }
    return null;
  }
}
