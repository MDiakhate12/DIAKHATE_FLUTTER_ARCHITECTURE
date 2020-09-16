import 'package:discover/config/locator.dart';
import 'package:discover/constants/routes.dart';
import 'package:discover/services/auth_service.dart';
import 'package:flutter/material.dart';

AuthService authService = locator<AuthService>();

class SignupState with ChangeNotifier {
  static String isoCode = "SN";

  var formKey = GlobalKey<FormState>();

  String _phoneNumber = "";
  bool _loading = false;

  bool get loading => this._loading;
  set loading(value) {
    this._loading = value;
    notifyListeners();
  }

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String phoneNumberText) {
    _phoneNumber = phoneNumberText;
    // print(formKey.currentState.validate());
    print("FROM SETTER INPUT : $phoneNumberText");
    print("FROM SETTER PHONE : $phoneNumber");
  }

  verifyPhoneNumber(BuildContext context) async {
    if (formKey.currentState.validate()) {
      print("VALIDATE FROM VERIFY : ${formKey.currentState.validate()}");
      print("FROM VERIFY : ${this.phoneNumber}");

      this.loading = true;
      await authService.verifyPhoneNumber(this.phoneNumber);
      this.loading = false;
      // Navigator.pushNamed(context, Routes.homeView);

      print("CURRENT USER FROM VERIFY : ${authService.user()}");
    } else {
      print("ELSE FROM VERIFY : ${this.phoneNumber}");
    }
  }
}
