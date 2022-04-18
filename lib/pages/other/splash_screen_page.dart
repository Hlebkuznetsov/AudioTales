import 'dart:async';

import 'package:audio_tales/pages/auth/new_user_page.dart';
import 'package:audio_tales/pages/auth/permanent_user_page.dart';
import 'package:audio_tales/repositories/auth_repository.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';

final AuthRepository auth = AuthRepository();

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get rid of it !!!!
    getStates(context);
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  auth.isLoggedIn ? PermanentUserPage() : NewUserPage()),
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
