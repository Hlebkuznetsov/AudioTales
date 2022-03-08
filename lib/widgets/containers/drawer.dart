import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/widgets/containers/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Аудиосказки',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackText),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Меню',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackText.withOpacity(0.7)),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    DrawerItem(
                        icon: AppIcons.home,
                        pageName: 'Главная',
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, TabsPage.routeName);
                        }),
                    DrawerItem(
                      icon: AppIcons.profile,
                      pageName: 'Профиль',
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: AppIcons.category,
                      pageName: 'Подборки',
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: AppIcons.audio,
                      pageName: 'Все аудиофайлы',
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: AppIcons.search,
                      pageName: 'Поиск',
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: AppIcons.deleted,
                      pageName: 'Недавно удаленные',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    DrawerItem(
                      icon: AppIcons.subscription,
                      pageName: 'Подписка',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    DrawerItem(
                      icon: AppIcons.support,
                      pageName: ' Написать в\n поддержку',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
