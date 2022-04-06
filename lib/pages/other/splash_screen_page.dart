import 'dart:async';

import 'package:audio_tales/pages/auth/registration_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => RegistrationPage()),
          (Route<dynamic> route) => false);
    });
    return Scaffold(
      body: Container(
          child: Center(
            child: Text(
              'Memory Box',
              style: TextStyle(
                  fontSize: 24,
                  color: AppColors.background,
                  fontWeight: FontWeight.w500),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.topGradient,
              AppColors.bottomGradient,
            ],
          ))),
    );
  }
}
