import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  String verificationId;
  int forceResendingToken;

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    return await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: Duration(seconds: 60),
      verificationCompleted: _verificationCompleted,
      verificationFailed: _verificationFailed,
      codeSent: _codeSent,
      codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout,
    );
  }

  loginWithSmsCode(String verificationId, String smsCode) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    await _firebaseAuth.signInWithCredential(authCredential);
  }

  user() {
    return _firebaseAuth.currentUser;
  }

  void _verificationCompleted(AuthCredential phoneAuthCredential) async {
    await _firebaseAuth.signInWithCredential(phoneAuthCredential);
    print("FROM VERIFICATION COMPLETED");
  }

  void _verificationFailed(FirebaseAuthException error) {
    print("VERIFICATION FAILED : ${error.message}");
  }

  void _codeSent(String verificationId, [int forceResendingToken]) {
    this.verificationId = verificationId;
    this.forceResendingToken = forceResendingToken;
    print("FROM CODE SENT");
  }

  void _codeAutoRetrievalTimeout(String verificationId) {
    this.verificationId = verificationId;
    print("FROM  CODE RETRIEVAL");
  }
}
