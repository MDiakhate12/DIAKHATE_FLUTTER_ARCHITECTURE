import 'package:flutter/material.dart';

class RouteNotFound extends StatelessWidget {
  final String name;

  RouteNotFound({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for $name'),
      ),
    );
  }
}
