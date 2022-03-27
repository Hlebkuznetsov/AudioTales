import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewCategoryPicture extends StatelessWidget {
  const NewCategoryPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.blackText.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 3),
          ),
        ],
        color: AppColors.background.withOpacity(0.85),
        borderRadius: BorderRadius.circular(18),
        // image: DecorationImage(
        //   image: AssetImage(AppImages.profileDemo),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(66),
        child: SvgPicture.asset(
          AppImages.takePhoto,
          color: AppColors.blackText.withOpacity(0.8),
        ),
      ),
    );
  }
}
