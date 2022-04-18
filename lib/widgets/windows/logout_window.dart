import 'package:audio_tales/repositories/auth_repository.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class LogoutWindow extends StatelessWidget {
  const LogoutWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      title: Align(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Выйти?',
          style: TextStyle(color: AppColors.blackText, fontSize: 18),
        ),
      )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 14, right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 38,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      AuthRepository().signOut(context);
                    },
                    child: Text(
                      'Да',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.purple),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(19),
                  ),
                  border: Border.all(color: AppColors.purple, width: 1.5),
                ),
              ),
              Container(
                width: 70,
                height: 38,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Нет',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.purple),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(19),
                  ),
                  border: Border.all(color: AppColors.purple, width: 1.5),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
