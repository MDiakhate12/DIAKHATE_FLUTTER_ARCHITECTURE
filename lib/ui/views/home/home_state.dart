import 'package:flutter/material.dart';

class HomeState with ChangeNotifier {
  String _title = "Home";
  String get title => _title;

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

  updateText(String text) => this.text = text;
}
