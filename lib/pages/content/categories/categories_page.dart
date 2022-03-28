import 'package:audio_tales/pages/content/categories/category_page.dart';
import 'package:audio_tales/pages/content/categories/new_category.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/routes/routes.dart';
import 'package:audio_tales/widgets/buttons/categories_page_actions.dart';
import 'package:audio_tales/widgets/containers/category_container.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);

  static const routeName = '/categories_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              CategoriesPageActions(),
            ],
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                'Подборки',
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  color: AppColors.whiteText,
                ),
              ),
            ),
            backgroundColor: AppColors.green,
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      AppRoutes.generateRoute(
                          RouteSettings(name: NewCategoryPage.routeName)));
                },
                child: Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
            )),
        body: Stack(
          children: [
            CurvedContainer(
              color: AppColors.green,
              height: 230,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Все в одном месте',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 50, bottom: 10),
              child: GridView.count(
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                childAspectRatio: 0.85,
                crossAxisCount: 2,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            AppRoutes.generateRoute(
                                RouteSettings(name: CategoryPage.routeName)));
                      },
                      child: CategoryContainer()),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                ],
              ),
            )
          ],
        ));
  }
}
