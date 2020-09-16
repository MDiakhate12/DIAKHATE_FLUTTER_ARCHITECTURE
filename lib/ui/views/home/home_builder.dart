import 'package:discover/ui/views/home/home_state.dart';
import 'package:discover/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:discover/config/locator.dart';

Widget buildBody(BuildContext context) {
  print("FROM BODY : $context");

  return Consumer<HomeState>(
    builder: (context, homeState, child) {
      return Center(
        child: Text(homeState.text),
      );
    },
  );
}

Widget buildAppBar(BuildContext context) {
  var homeState = Provider.of(context)<HomeState>();
  return Text(homeState.title);
}

Widget buildFloatingActionButton(BuildContext context) {
  return Consumer<HomeState>(
    builder: (context, homeState, child) {
      return FloatingActionButton(
        onPressed: () => homeState.updateText("DIAAAAAF !!!"),
        child: Icon(
          Icons.update,
        ),
      );
    },
  );
}
