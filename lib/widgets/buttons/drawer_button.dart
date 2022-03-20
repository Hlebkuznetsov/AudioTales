import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10),
      child: IconButton(
        onPressed: () {
          NavigatorKeys.tabsScaffoldKey.currentState!.openDrawer();
        },
        icon: SvgPicture.asset(AppIcons.drawer),
        iconSize: 10,
      ),
    );
  }
}
