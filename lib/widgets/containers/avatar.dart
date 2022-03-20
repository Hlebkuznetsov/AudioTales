import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: 210.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.blackText.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 3),
          ),
        ],
        color: AppColors.background,
        borderRadius: BorderRadius.circular(25),
        //replace this  one  to   child  below
        image: DecorationImage(
          image: AssetImage(AppImages.profileDemo),
          fit: BoxFit.fill,
        ),
      ),
      // child: SvgPicture.asset(
      //   AppImages.avatar,
      //   color: AppColors.purple.withOpacity(0.5),
      // ),
    );
  }
}
