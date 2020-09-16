import 'package:discover/config/locator.dart';
import 'package:discover/config/router.dart';
import 'package:discover/constants/routes.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.signupView,
      onGenerateRoute: Router.onGenerateRoute,
    );
  }
}
