import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/buttons/audio_page_actions.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/lists/actions_audio_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            AudioPageActions(),
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'Аудиозаписи',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: AppColors.whiteText,
              ),
            ),
          ),
          backgroundColor: AppColors.darkBlue,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: DrawerButton()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CurvedContainer(
                  color: AppColors.darkBlue,
                  height: 160,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        'Все в одном месте',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                          color: AppColors.whiteText,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 аудио',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteText,
                                  ),
                                ),
                                Text(
                                  '10:30 часов',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteText,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 200,
                              height: 46,
                              decoration: BoxDecoration(
                                color: AppColors.background.withOpacity(0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(23)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.background,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(23)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: SizedBox(
                                                    height: 40,
                                                    width: 40,
                                                    child: SvgPicture.asset(
                                                        AppImages.play)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 17),
                                            child: Text(
                                              'Запустить все',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: AppColors.purple,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  SvgPicture.asset(AppIcons.repeat),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: 540,
                child: ActionsAudioList(color: AppColors.darkBlue)),
          ],
        ),
      ),
    );
  }
}
