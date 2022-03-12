import 'package:audio_tales/pages/content/test_page.dart';
import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
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
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => TabsPage(
                              selectedPage: 0,
                            ),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      icon: AppIcons.profile,
                      pageName: 'Профиль',
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => TabsPage(
                              selectedPage: 4,
                            ),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      icon: AppIcons.category,
                      pageName: 'Подборки',
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => TabsPage(
                              selectedPage: 1,
                            ),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      icon: AppIcons.audio,
                      pageName: 'Все аудиофайлы',
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => TabsPage(
                              selectedPage: 3,
                            ),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      icon: AppIcons.search,
                      pageName: 'Поиск',
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          NavigatorKeys.mainKey.currentState!.context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => TestPage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
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
