import 'package:discover/ui/views/home/home_builder.dart';
import 'package:discover/ui/views/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeState>(
        create: (context) => HomeState(),
        builder: (context, child) {
          return Scaffold(
            appBar: buildAppBar(context),
            body: buildBody(context),
            floatingActionButton: buildFloatingActionButton(context),
          );
        });
  }
}
