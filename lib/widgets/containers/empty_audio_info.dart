import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyAudioInfo extends StatelessWidget {
  const EmptyAudioInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'Как только ты запишешь \n аудио, она появится здесь.',
          style: TextStyle(
            color: AppColors.blackText.withOpacity(0.5),
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 40,
        ),
        SvgPicture.asset(AppImages.arrowDown),
      ],
    );
  }
}
