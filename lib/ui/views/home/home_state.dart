import 'package:discover/config/locator.dart';
import 'package:discover/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomeState with ChangeNotifier {
  String _title = "Home";
  String get title => _title;
  AuthService authService = locator<AuthService>();
  String _text = "Welcome";
  get text => _text;
  set text(value) {
    this._text = value;
    notifyListeners();
  }

  bool _isLoading = true;
  get isLoading => _isLoading;
  set isLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  updateText({String text}) =>
      this.text == "Welcome" ? this.text = "DIAAFF !!" : this.text = "Welcome";
}
