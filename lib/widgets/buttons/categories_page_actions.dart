import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesPageActions extends StatelessWidget {
  CategoriesPageActions({
    Key? key,
  }) : super(key: key);

  final List<String> optionsList = [
    'Удалить подборку',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: PopupMenuButton(
        offset: Offset(-10, 40),
        iconSize: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        icon: SvgPicture.asset(
          AppIcons.more,
          color: AppColors.background,
        ),
        itemBuilder: (context) {
          return optionsList
              .map((option) => PopupMenuItem(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      option,
                      style:
                          TextStyle(fontSize: 14, color: AppColors.blackText),
                    ),
                    value: option,
                  ))
              .toList();
        },
        onSelected: (value) {
          print(value);
        },
      ),
    );
  }
}
