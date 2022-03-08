import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.pageName,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final String pageName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        height: 48,
        child: ListTile(
          horizontalTitleGap: 3,
          leading: SvgPicture.asset(icon),
          title: Text(
            pageName,
            style: TextStyle(
              fontSize: 19,
              color: AppColors.blackText,
            ),
          ),
        ),
      ),
    );
  }
}
