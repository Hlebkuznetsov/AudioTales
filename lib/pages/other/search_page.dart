import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/buttons/search_page_actions.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/textfields/search_textfield.dart';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const routeName = '/search_page';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
            actions: [
              SearchPageActions(),
            ],
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                'Поиск',
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  color: AppColors.whiteText,
                ),
              ),
            ),
            backgroundColor: AppColors.blue,
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: DrawerButton()),
        body: Column(
          children: [
            Stack(
              children: [
                CurvedContainer(
                  color: AppColors.blue,
                  height: 160,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Найди потеряшку',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                      color: AppColors.whiteText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 67, left: 18, right: 18),
                  child: SearchTextField(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
