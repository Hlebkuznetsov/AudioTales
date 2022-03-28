import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/widgets/buttons/edit_audio_actions.dart';
import 'package:audio_tales/widgets/rows/player_actions.dart';
import 'package:audio_tales/widgets/textfields/audio_name_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AudioBottomSheet extends StatelessWidget {
  const AudioBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.94,
      builder: (context, scrollController) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: AppColors.background,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(AppIcons.arrowDown)),
                        EditAudioActions()
                      ],
                    ),
                  ),
                  Container(
                    height: 330,
                    width: 330,
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

                      // image: DecorationImage(
                      //   image: AssetImage(AppImages.profileDemo),
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    child: Center(
                        child: Text(
                      'Подборка не выбрана...',
                      style: TextStyle(
                          fontSize: 17,
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Название подборки',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.blackText,
                        fontWeight: FontWeight.w500),
                  ),

                  AudioNameTextField(
                    readOnly: false,
                  ),
                  // Text(
                  //   'Название аудиозаписи',
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     color: AppColors.blackText,
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: AppColors.blackText,
                    width: 340,
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PlayerActions(),
                ],
              ),
            ));
      },
    );
  }
}
