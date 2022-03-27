import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/lists/categories_search_list.dart';
import 'package:audio_tales/widgets/textfields/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddAudioCategoiesPage extends StatelessWidget {
  const AddAudioCategoiesPage({Key? key}) : super(key: key);

  static const routeName = '/add_audio_categories_page';

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
                'Добавить',
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
            'Выбрать',
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
      body: Column(
        children: [
          Stack(
            children: [
              CurvedContainer(
                color: AppColors.green,
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 65,
                    ),
                    SearchTextField(),
                  ],
                ),
              )
            ],
          ),
          CategoriesSearchList(),
        ],
      ),
    );
  }
}
