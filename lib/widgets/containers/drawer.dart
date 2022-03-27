import 'package:audio_tales/pages/content/audio/audio_page.dart';
import 'package:audio_tales/pages/content/categories/categories_page.dart';
import 'package:audio_tales/pages/content/main_page.dart';
import 'package:audio_tales/pages/content/audio/recently_deleted_page.dart';
import 'package:audio_tales/pages/other/profile_page.dart';
import 'package:audio_tales/pages/other/search_page.dart';
import 'package:audio_tales/pages/other/subscription_page.dart';
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
                        onTap: () => toMain(context)),
                    DrawerItem(
                      icon: AppIcons.profile,
                      pageName: 'Профиль',
                      onTap: () => toProfile(context),
                    ),
                    DrawerItem(
                        icon: AppIcons.category,
                        pageName: 'Подборки',
                        onTap: () => toCategories(context)),
                    DrawerItem(
                        icon: AppIcons.audio,
                        pageName: 'Все аудиофайлы',
                        onTap: () => toAudio(context)),
                    DrawerItem(
                        icon: AppIcons.search,
                        pageName: 'Поиск',
                        onTap: () => toSearch(context)),
                    DrawerItem(
                        icon: AppIcons.deleted,
                        pageName: 'Недавно удаленные',
                        onTap: () => toRecentlyDeleted(context)),
                    SizedBox(
                      height: 40,
                    ),
                    DrawerItem(
                        icon: AppIcons.subscription,
                        pageName: 'Подписка',
                        onTap: () => toSubscription(context)),
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

  void toSubscription(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(NavigatorKeys.firstTabKey.currentState!.context)
        .push(MaterialPageRoute(builder: ((context) {
      return SubscriptionPage();
    })));

//  здесь  мы  пробрасываем страницу с нужным  ключом  и   получаем  исключение
// widget use multiple global keys
// переделать на Bloc  с получением индекса таба  и автоматического выстраивания
//стака именно в этом табе

    // Navigator.push(
    //   context,
    //   PageRouteBuilder(
    //     pageBuilder: (context, _, __) => TabsPage(
    //       selectedPage: 0,
    //     ),
    //     transitionDuration: Duration.zero,
    //     reverseTransitionDuration: Duration.zero,
    //   ),
    // );
  }

  void toRecentlyDeleted(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      NavigatorKeys.firstTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => RecentlyDeletedPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }

  void toSearch(BuildContext context) {
    Navigator.of(context).pop();

    Navigator.pushReplacement(
      NavigatorKeys.firstTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => SearchPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }

  void toAudio(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      NavigatorKeys.fourTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => AudioPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }

  void toCategories(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      NavigatorKeys.secondTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => CategoriesPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }

  void toMain(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      NavigatorKeys.firstTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => MainPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }

  void toProfile(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      NavigatorKeys.fiveTabKey.currentState!.context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => ProfilePage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
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
  }
}
