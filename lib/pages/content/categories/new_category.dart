import 'package:audio_tales/pages/content/categories/add_audio_categories_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/routes/routes.dart';
import 'package:audio_tales/widgets/containers/new_category_picture.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/description_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewCategoryPage extends StatelessWidget {
  const NewCategoryPage({Key? key}) : super(key: key);

  static const routeName = '/new_category_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leadingWidth: 75,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8),
            child: Center(
                child: GestureDetector(
              onTap: () {},
              child: Text(
                'Готово',
                style: TextStyle(
                  color: AppColors.background,
                  fontSize: 14,
                ),
              ),
            )),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Text(
            'Создание',
            style: TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              color: AppColors.whiteText,
            ),
          ),
        ),
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
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Название',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.background,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      NewCategoryPicture(),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Введите описание...',
                            style: TextStyle(color: AppColors.blackText),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DescriptionTextField(),
                      SizedBox(height: 100),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              AppRoutes.generateRoute(RouteSettings(
                                  name: AddAudioCategoiesPage.routeName)));
                        },
                        child: Text(
                          'Добавить аудиофайл',
                          style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
