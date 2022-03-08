import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinishedRegistrationPage extends StatelessWidget {
  const FinishedRegistrationPage({Key? key}) : super(key: key);

  static const routeName = '/finished_registration_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            CurvedContainer(
              color: AppColors.purple,
              height: 290,
            ),
            Text(
              'Ты супер!',
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: AppColors.whiteText,
              ),
            ),
          ]),
          SizedBox(
            height: 70,
          ),
          Container(
            width: 294,
            height: 70,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              elevation: 3,
              shadowColor: Colors.white,
              color: AppColors.background,
              child: Align(
                child: Text(
                  'Мы рады тебя видеть',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackText,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          SvgPicture.asset(
            'assets/images/heart.svg',
          ),
        ],
      ),
    );
  }
}
