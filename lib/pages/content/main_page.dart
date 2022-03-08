import 'package:audio_tales/pages/other/profile_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/lists/audio_list.dart';
import 'package:audio_tales/widgets/stacks/categories_labels.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/main_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.purple,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              return Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
            iconSize: 30,
          )),
      body: Column(
        children: [
          CategoriessLabels(),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
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
                            horizontal: 15.0, vertical: 10),
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
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, ProfilePage.routeName);
                                },
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
                        height: 240,
                        child:
                            // EmptyAudioInfo(),
                            //switch between
                            AudioList(),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
