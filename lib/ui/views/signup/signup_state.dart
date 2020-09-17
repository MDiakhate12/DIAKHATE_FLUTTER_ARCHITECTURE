import 'package:discover/config/locator.dart';
import 'package:discover/services/auth_service.dart';
import 'package:flutter/material.dart';

AuthService authService = locator<AuthService>();

class SignupState with ChangeNotifier {}
