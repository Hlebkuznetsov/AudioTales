import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/containers/avatar.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/name_textfield.dart';
import 'package:audio_tales/widgets/textfields/registration_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  static const routeName = '/other/edit_profile_page';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'Профиль',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: AppColors.whiteText,
              ),
            ),
          ),
          backgroundColor: AppColors.purple,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CurvedContainer(
                    color: AppColors.purple,
                    height: 230,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'Твоя частичка',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteText,
                          ),
                        ),
                        SizedBox(
                          height: 55,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Avatar(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.blackText.withOpacity(0.5),
                              ),
                              height: 210,
                              width: 210,
                            ),
                            SvgPicture.asset(AppImages.takePhoto),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: NameTextField(),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(30),
                    child: RegistrationTextField()),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Cохранить',
                  style: TextStyle(
                      fontSize: 13,
                      color: AppColors.blackText,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
