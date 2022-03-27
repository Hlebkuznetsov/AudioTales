import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AudioActionsButton extends StatelessWidget {
  AudioActionsButton({
    Key? key,
  }) : super(key: key);

// list  of things  should be made in    block i suppose , so will need to  take  it  from  here
  final List<String> optionsList = [
    'Добавить в подборку',
    'Редактировать название',
    'Поделиться',
    'Скачать',
    'Поделиться',
    'Удалить',
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: Offset(-10, 40),
      iconSize: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      icon: SvgPicture.asset(
        AppIcons.more,
        color: AppColors.blackText,
      ),
      itemBuilder: (context) {
        return optionsList
            .map((option) => PopupMenuItem(
                  height: 40,
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
