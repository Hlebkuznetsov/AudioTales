import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/pages/content/audio/finished_recording_page.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecordingPage extends StatelessWidget {
  const RecordingPage({Key? key}) : super(key: key);

  static const routeName = '/recording_page';

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
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text('Отменить',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackText)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Запись',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackText),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      color: AppColors.blackText.withOpacity(0.7),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: AppColors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '00:01:45',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackText),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, _, __) =>
                                  FinishedRecordingPage(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );

                          // Navigator.pushNamed(
                          //     context, FinishedRecordingPage.routeName);
                        },
                        child: SvgPicture.asset(AppIcons.recording)),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
