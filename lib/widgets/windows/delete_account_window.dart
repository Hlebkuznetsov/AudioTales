import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class DeleteAccountWindow extends StatelessWidget {
  const DeleteAccountWindow({
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
          'Точно удалить аккаунт?',
          style: TextStyle(color: AppColors.blackText, fontSize: 18),
        ),
      )),
      content: Text(
        'Все аудиофайлы исчезнут и\n восстановить аккаунт будет\n невозможно',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 13, color: AppColors.blackText.withOpacity(0.7)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 14, right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 38,
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Удалить',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteText),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(19),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 38,
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
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
