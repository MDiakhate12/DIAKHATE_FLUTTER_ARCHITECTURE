import 'package:discover/constants/routes.dart';
import 'package:discover/ui/views/home/home_view.dart';
import 'package:discover/ui/views/not_found/not_found_view.dart';
import 'package:discover/ui/views/signup/signup_view.dart';
import 'package:discover/ui/views/startup/startup_view.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(builder: (context) => Home());
        break;
      case Routes.signupView:
        return MaterialPageRoute(builder: (context) => Signup());
        break;
      // case Routes.loginView:
      // return MaterialPageRoute(builder: (context) => Login());
      // break;
      case Routes.startupView:
        return MaterialPageRoute(builder: (context) => Startup());
        break;

      case Routes.bottomModalView:
        return MaterialPageRoute(builder: (context) => Startup());
        break;

      default:
        return MaterialPageRoute(
            builder: (context) => RouteNotFound(name: settings.name));
    }
  }
}
