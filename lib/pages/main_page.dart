import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/stacks/categories_labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  static const routeName = '/main_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.purple,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: DrawerButton()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriessLabels(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
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
                  color: AppColors.background.withOpacity(0.85),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Аудиозаписи',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Открыть все',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.blackText,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Как только ты запишешь\n аудио, она появится здесь.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.blackText.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(height: 40),
                          SvgPicture.asset(
                            AppImages.arrowDown,
                            height: 45,
                          ),
                        ],
                      ),
                      //  or this  one
                      // ActionsAudioList(color: AppColors.purple)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
