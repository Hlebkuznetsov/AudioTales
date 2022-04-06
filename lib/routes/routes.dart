import 'package:audio_tales/pages/audio/audio_page.dart';
import 'package:audio_tales/pages/categories/add_audio_categories_page.dart';
import 'package:audio_tales/pages/categories/categories_page.dart';
import 'package:audio_tales/pages/categories/category_page.dart';
import 'package:audio_tales/pages/categories/edit_category_page.dart';
import 'package:audio_tales/pages/categories/new_category.dart';
import 'package:audio_tales/pages/main_page.dart';
import 'package:audio_tales/pages/auth/finished_registration_page.dart';
import 'package:audio_tales/pages/auth/new_user_page.dart';
import 'package:audio_tales/pages/auth/permanent_user_page.dart';
import 'package:audio_tales/pages/auth/registration_page.dart';
import 'package:audio_tales/pages/other/profile_page.dart';
import 'package:audio_tales/pages/audio/record_page.dart';
import 'package:audio_tales/pages/other/search_page.dart';
import 'package:audio_tales/pages/other/subscription_page.dart';
import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/pages/audio/finished_recording_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //  AUTH
      case NewUserPage.routeName:
        return MaterialPageRoute(builder: (_) => NewUserPage());
      case RegistrationPage.routeName:
        return MaterialPageRoute(builder: (_) => RegistrationPage());
      case FinishedRegistrationPage.routeName:
        return MaterialPageRoute(builder: (_) => FinishedRegistrationPage());
      case PermanentUserPage.routeName:
        return MaterialPageRoute(builder: (_) => PermanentUserPage());
      //  AUTH

      //  CATEGORIES
      case NewCategoryPage.routeName:
        return MaterialPageRoute(builder: (_) => NewCategoryPage());
      case AddAudioCategoiesPage.routeName:
        return MaterialPageRoute(builder: (_) => AddAudioCategoiesPage());
      case CategoryPage.routeName:
        return MaterialPageRoute(builder: (_) => CategoryPage());
      case EditCategoryPage.routeName:
        return MaterialPageRoute(builder: (_) => EditCategoryPage());
      //  CATEGORIES

      //  AUDIO
      case MainPage.routeName:
        return MaterialPageRoute(builder: (_) => MainPage());
      case FinishedRecordingPage.routeName:
        return MaterialPageRoute(builder: (_) => FinishedRecordingPage());
      //  AUDIO

      //  OTHER
      case TabsPage.routeName:
        return MaterialPageRoute(builder: (_) => TabsPage(selectedPage: 0));
      case ProfilePage.routeName:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case SubscriptionPage.routeName:
        return MaterialPageRoute(builder: (_) => SubscriptionPage());
      case SearchPage.routeName:
        return MaterialPageRoute(builder: (_) => SearchPage());
      //  OTHER

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('${settings.name} Route not found'),
                  ),
                ));
    }
  }

  static Widget generateTabRoute(navigatorKey) {
    late Widget page;

    if (navigatorKey == NavigatorKeys.firstTabKey) {
      page = MainPage();
    }
    if (navigatorKey == NavigatorKeys.secondTabKey) {
      page = CategoriesPage();
    }
    if (navigatorKey == NavigatorKeys.thirdTabKey) {
      page = RecordPage();
    }
    if (navigatorKey == NavigatorKeys.fourTabKey) {
      page = AudioPage();
    }
    if (navigatorKey == NavigatorKeys.fiveTabKey) {
      page = ProfilePage();
    }
    return page;
  }
}
