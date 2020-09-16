
import 'package:flutter/material.dart';

class Startup extends StatefulWidget {
  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  bool animated = true;
  setAnimated() {
    setState(() {
      animated = !animated;
    });
  }
  var btnKey = GlobalKey<_ButtonState>();
  @override
  Widget build(BuildContext context) {
    print(btnKey.currentState.context);
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                width: animated ? 200 : 100,
                height: animated ? 200 : 100,
                child: Image.asset(
                  "assets/images/ocean_car.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Button(
              key: btnKey,
              onPressed: setAnimated,
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  Button({this.onPressed, Key key}): super(key:key);
  final GestureTapCallback onPressed;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0,
      height: 0,
      child: RaisedButton(
        onPressed: widget.onPressed,
      ),
    );
  }
}
