import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/rows/player_actions.dart';
import 'package:audio_tales/widgets/windows/audio_bottom_sheet.dart';
import 'package:audio_tales/widgets/windows/delete_audio_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinishedRecordingPage extends StatelessWidget {
  const FinishedRecordingPage({Key? key}) : super(key: key);

  static const routeName = '/finished_recording_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.purple,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: DrawerButton()),
      body: Stack(
        children: [
          CurvedContainer(
            color: AppColors.purple,
            height: 230,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5, top: 60),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackText.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 16,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.background,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      AppIcons.upload,
                                      width: 20,
                                      height: 20,
                                      color: AppColors.blackText,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      AppIcons.download,
                                      width: 23,
                                      height: 23,
                                    )),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            DeleteAudioWindow());
                                  },
                                  icon: SvgPicture.asset(
                                    AppIcons.delete,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    isScrollControlled: true,
                                    isDismissible: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return AudioBottomSheet();
                                    });
                              },
                              child: Text(
                                'Сохранить',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.blackText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text('Аудиозапись 1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackText)),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        width: 300,
                        height: 10,
                        color: AppColors.blackText,
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      PlayerActions()
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
