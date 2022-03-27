import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerActions extends StatelessWidget {
  const PlayerActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(AppIcons.backRewind)),
        SizedBox(
          width: 50,
        ),
        IconButton(
            onPressed: () {},
            iconSize: 70,
            icon: SvgPicture.asset(
              AppImages.play,
              color: AppColors.orange,
              width: 70,
              height: 70,
            )),
        SizedBox(
          width: 50,
        ),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(AppIcons.forwardRewind)),
      ],
    );
  }
}
