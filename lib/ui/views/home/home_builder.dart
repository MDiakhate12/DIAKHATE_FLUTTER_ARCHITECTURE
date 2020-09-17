import 'package:discover/ui/views/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:discover/config/locator.dart';

Widget buildBody(BuildContext context) {
  HomeState homeState = Provider.of<HomeState>(context);

  return Center(
    child: Text(homeState.text),
  );
}

Widget buildAppBar(BuildContext context) {
  HomeState homeState = Provider.of<HomeState>(context);

  return AppBar(
    title: Text(homeState.title),
  );
}

Widget buildFloatingActionButton(BuildContext context) {
  HomeState homeState = Provider.of<HomeState>(context);

  return FloatingActionButton(
    onPressed: () => homeState.updateText(),
    child: Icon(homeState.text == "Welcome" ? Icons.add : Icons.update),
  );
}
