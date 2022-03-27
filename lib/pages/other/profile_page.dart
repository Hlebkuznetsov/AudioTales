import 'package:audio_tales/pages/other/edit_profile_page.dart';
import 'package:audio_tales/pages/other/subscription_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/containers/avatar.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/profile_textfield.dart';
import 'package:audio_tales/widgets/windows/delete_account_window.dart';
import 'package:audio_tales/widgets/windows/logout_window.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  static const routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          leading: DrawerButton()),
      body: Column(
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
                      height: 20,
                    ),
                    Avatar()
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Ваше Имя',
              style: TextStyle(
                fontSize: 21,
                color: AppColors.blackText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(30),
                child: ProfileTextField()),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return EditProfilePage();
                })));
              },
              child: Text(
                'Редактировать',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return SubscriptionPage();
              })));
            },
            child: Text(
              'Подписка',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: AppColors.blackText,
                ),
              ),
              width: 280,
              height: 22,
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                // logic through the bloc probably
                widthFactor: 0.3,
                child: Container(
                    decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13),
                    topLeft: Radius.circular(13),
                  ),
                )),
              ),
            ),
          ),
          // logic here
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 40),
            child: Text(
              '${(0.3 * 500).toInt()} / 500 мб',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => LogoutWindow());
                },
                child: Text(
                  'Выйти из приложения',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.blackText,
                      fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => DeleteAccountWindow());
                },
                child: Text(
                  'Удалить аккаунт',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.red,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
