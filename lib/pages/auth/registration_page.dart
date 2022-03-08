import 'package:audio_tales/pages/auth/finished_registration_page.dart';
import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/registration_textfield.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  static const routeName = '/registration_page';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(alignment: Alignment.center, children: [
                CurvedContainer(
                  color: AppColors.purple,
                  height: 290,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Регистрация',
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        color: AppColors.whiteText,
                      ),
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Text(
                'Введи номер телефона',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.blackText,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 294,
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(30),
                  child: RegistrationTextField(),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, FinishedRegistrationPage.routeName);
                },
                child: Text(
                  'Продолжить',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.whiteText,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(294, 54),
                    primary: AppColors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  //return this  route back !!!
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //     MainPage.route, (Route<dynamic> route) => false);
                  Navigator.pushNamed(context, TabsPage.routeName);
                },
                child: Text(
                  'Позже',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackText,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 294,
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 3,
                  shadowColor: Colors.white,
                  color: AppColors.background,
                  child: Align(
                    child: Text(
                      'Регистрация привяжет твои сказки \n к  облаку, после чего они всегда\n будут с тобой',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.blackText,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
