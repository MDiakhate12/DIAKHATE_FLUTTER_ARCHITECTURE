import 'package:discover/constants/routes.dart';
import 'package:discover/ui/views/home/home_view.dart';

import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(builder: (context) => Home());
        break;

      default:
        return null;
    }
  }
}
