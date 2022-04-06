import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/containers/category_picture.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/category_description_textfield.dart';
import 'package:audio_tales/widgets/textfields/category_title_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditCategoryPage extends StatelessWidget {
  static const routeName = '/categories/edit_category_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leadingWidth: 75,
        actions: [
          // EditCategoryPageActions(),
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(AppImages.backButton),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                CurvedContainer(
                  color: AppColors.green,
                  height: 230,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CategoryTitleTextFiled(),
                      Stack(children: [
                        CategoryPicture(),
                        Center(
                          child: Container(
                            height: 210.0,
                            child: SvgPicture.asset(
                              AppImages.takePhoto,
                            ),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      CategoryDescriptionTextFiled(),
                    ],
                  ),
                )
              ],
            ),
            // Container(
            //   height: 285,
            //   child: ActionsAudioList(color: AppColors.green),
            // )
          ],
        ),
      ),
    );
  }
}
