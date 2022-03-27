import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/pages/content/audio/recording_page.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecordPage extends StatelessWidget {
  RecordPage({Key? key}) : super(key: key);

  static const routeName = '/record_page';

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Нажмите для записи',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.blackText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: IconButton(
                        iconSize: 50,
                        icon: SvgPicture.asset(
                          AppIcons.mic,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, _, __) => RecordingPage(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
