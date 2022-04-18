import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:audio_tales/helpers/helpers.dart';
import 'package:audio_tales/pages/auth/finished_registration_page.dart';
import 'package:audio_tales/pages/other/splash_screen_page.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final String verificationId;

  AuthRepository._privateConstructor();

  static final AuthRepository _instance = AuthRepository._privateConstructor();

  factory AuthRepository() {
    return _instance;
  }

  void verifyPhone(String phone) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: cleanPhoneNumber(phone: phone),
          verificationCompleted: (PhoneAuthCredential credential) async {},
          verificationFailed: (FirebaseAuthException exception) async {},
          codeSent: (String verificationId, int? resendingToken) {
            this.verificationId = verificationId;
          },
          codeAutoRetrievalTimeout: (String verificationId) async {});
    } catch (e) {
      ScaffoldMessenger.of(NavigatorKeys.scaffoldKey.currentState!.context)
          .showSnackBar(SnackBar(content: Text('Ошибка верификации')));
    }
  }

  void verifyCode({required String otp, required BuildContext context}) async {
    PhoneAuthCredential phoneAuthCredential =
        await PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: otp);
    try {
      await _auth.signInWithCredential(phoneAuthCredential);

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => FinishedRegistrationPage()),
          (Route<dynamic> route) => false);
    } catch (e) {
      ScaffoldMessenger.of(NavigatorKeys.scaffoldKey.currentState!.context)
          .showSnackBar(SnackBar(content: Text('Неверный код')));
    }
  }

  bool get isLoggedIn {
    final user = _auth.currentUser?.uid;
    return user != null ? true : false;
  }

  void signOut(BuildContext context) {
    if (isLoggedIn) {
      _auth.signOut();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => SplashScreenPage()),
          (Route<dynamic> route) => false);
      BlocProvider.of<RegistrationBloc>(context)
          .add(PhoneLength(phone: '+380('));
    }
  }
}
