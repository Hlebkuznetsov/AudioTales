import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class CategoryPicture extends StatelessWidget {
  const CategoryPicture({
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
        color: AppColors.blackText.withOpacity(0.85),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
