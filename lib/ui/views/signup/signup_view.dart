import 'package:discover/ui/views/signup/signup_builder.dart';
import 'package:discover/ui/views/signup/signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignupState>(create: (context) => SignupState()),
        StreamProvider(
            create: (context) => FirebaseAuth.instance.authStateChanges()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PhoneNumberSignupForm(),
      ),
    );
  }
}
