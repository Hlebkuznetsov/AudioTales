import 'package:audio_tales/pages/auth/registration_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/stacks/memory_box_label.dart';
import 'package:flutter/material.dart';

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key}) : super(key: key);

  static const routeName = '/auth/new_user_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MemoryBoxLabel(),
          SizedBox(
            height: 45,
          ),
          Text(
            'Привет!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: AppColors.blackText,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Мы рады видеть тебя здесь.\n Это приложение поможет записывать \n сказки и держать их в удобном месте не\n  заполняя память на телефоне',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.blackText,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, RegistrationPage.routeName),
            child: Text(
              'Продолжить',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 55),
                primary: AppColors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          )
        ],
      ),
    );
  }
}
