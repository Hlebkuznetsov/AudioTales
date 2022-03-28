import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AudioListActions extends StatelessWidget {
  AudioListActions({
    Key? key,
  }) : super(key: key);

  final List<String> optionsList = [
    'Переименовать',
    'Добавить в подборку',
    'Удалить',
    'Поделиться',
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset(-10, 40),
      iconSize: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      icon: SvgPicture.asset(
        AppIcons.more,
        width: 18,
        color: AppColors.blackText,
      ),
      itemBuilder: (context) {
        return optionsList
            .map((option) => PopupMenuItem(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    option,
                    style: TextStyle(fontSize: 14, color: AppColors.blackText),
                  ),
                  value: option,
                ))
            .toList();
      },
      onSelected: (value) {
        print(value);
      },
    );
  }
}
