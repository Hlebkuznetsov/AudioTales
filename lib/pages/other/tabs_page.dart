import 'package:audio_tales/pages/other/navigation_item_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/widgets/containers/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key, required this.selectedPage}) : super(key: key);

  final int selectedPage;

  static const String routeName = '/other/tabs_page';

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedPage;
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: NavigatorKeys.tabsScaffoldKey,
      drawer: CustomDrawer(),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.blackText.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 23,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (value) => setState(() => _currentIndex = value),
            currentIndex: _currentIndex,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor:
                _currentIndex == 2 ? AppColors.orange : AppColors.purple,
            unselectedItemColor: AppColors.blackText,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.home,
                ),
                activeIcon: SvgPicture.asset(
                  AppIcons.home,
                  color: AppColors.purple,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.category),
                activeIcon: SvgPicture.asset(
                  AppIcons.category,
                  color: AppColors.purple,
                ),
                label: 'Подборки',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.mic,
                ),
                activeIcon: SvgPicture.asset(
                  AppIcons.mic,
                ),
                label: 'Запись',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.audio,
                ),
                activeIcon: SvgPicture.asset(
                  AppIcons.audio,
                  color: AppColors.purple,
                ),
                label: 'Аудиозаписи',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.profile,
                ),
                activeIcon: SvgPicture.asset(
                  AppIcons.profile,
                  color: AppColors.purple,
                ),
                label: 'Профиль',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          NavigationItemPage(navigatorKey: NavigatorKeys.firstTabKey),
          NavigationItemPage(navigatorKey: NavigatorKeys.secondTabKey),
          NavigationItemPage(navigatorKey: NavigatorKeys.thirdTabKey),
          NavigationItemPage(navigatorKey: NavigatorKeys.fourTabKey),
          NavigationItemPage(navigatorKey: NavigatorKeys.fiveTabKey),
        ],
      ),
    );
  }
}
