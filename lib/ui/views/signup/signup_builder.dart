import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:discover/ui/views/signup/signup_state.dart';
// import 'package:discover/config/locator.dart';

class PhoneNumberSignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("FROM BODY : $context");
    SignupState signupState = Provider.of<SignupState>(context);

    return signupState.loading
        ? Loading()
        : SignupForm(signupState: signupState);
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key key,
    @required this.signupState,
  }) : super(key: key);

  final SignupState signupState;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupState.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InternationalPhoneNumberInput(
            initialValue: PhoneNumber(
                phoneNumber: signupState.phoneNumber,
                isoCode: SignupState.isoCode),
            hintText: "ex. 77 123 45 67",
            autoValidate: false,
            selectorType: PhoneInputSelectorType.DIALOG,
            onInputChanged: (phoneNumber) {
              signupState.phoneNumber = phoneNumber.phoneNumber;
              print("FROM ON CHANGED : ${signupState.phoneNumber}");
            },
          ),
          SignupButton(signupState: signupState),
        ],
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key key,
    @required this.signupState,
  }) : super(key: key);

  final SignupState signupState;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () => signupState.verifyPhoneNumber(context),
        child: Text("Register"),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
