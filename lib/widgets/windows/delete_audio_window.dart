import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/widgets/windows/done_window.dart';
import 'package:flutter/material.dart';

class DeleteAudioWindow extends StatelessWidget {
  const DeleteAudioWindow({
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
          'Подтверждаете удаление?',
          style: TextStyle(color: AppColors.red, fontSize: 18),
        ),
      )),
      content: Text(
        'Ваш файл перенесется в папку \n “Недавно удаленные”.\n Через 15 дней он исчезнет.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 14, color: AppColors.blackText.withOpacity(0.7)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 14, right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 38,
                child: Center(
                  child: GestureDetector(
                    // this  logic to make on  bloc
                    // this  logic to make on  bloc
                    // this  logic to make on  bloc
                    // this  logic to make on  bloc
                    // this  logic to make on  bloc
                    onTap: () async {
                      Navigator.of(context).pop();

                      await Future.delayed(
                        Duration(seconds: 2),
                      ).then((value) => showDialog(
                          context:
                              NavigatorKeys.firstTabKey.currentState!.context,
                          builder: (BuildContext context) => DoneWindow()));
                    },
                    child: Text(
                      'Да',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteText),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(19),
                  ),
                ),
              ),
              SizedBox(width: 10),
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
