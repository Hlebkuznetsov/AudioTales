import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/stacks/memory_box_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PermanentUserPage extends StatelessWidget {
  const PermanentUserPage({Key? key}) : super(key: key);

  static const routeName = '/permanent_user_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MemoryBoxLabel(),
          SizedBox(
            height: 70,
          ),
          Container(
            width: 294,
            height: 70,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              elevation: 3,
              shadowColor: Colors.white,
              color: AppColors.background,
              child: Align(
                child: Text(
                  'Мы рады тебя видеть',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackText,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          SvgPicture.asset(AppImages.heart),
          SizedBox(
            height: 110,
          ),
          Container(
            width: 270,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              elevation: 3,
              shadowColor: Colors.white,
              color: AppColors.background,
              child: Align(
                child: Text(
                  'Взрослые иногда нуждаются в\n сказке даже больше, чем  дети',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackText,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
