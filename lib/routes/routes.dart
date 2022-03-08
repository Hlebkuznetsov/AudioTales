import 'package:audio_tales/pages/content/main_page.dart';
import 'package:audio_tales/pages/auth/finished_registration_page.dart';
import 'package:audio_tales/pages/auth/new_user_page.dart';
import 'package:audio_tales/pages/auth/permanent_user_page.dart';
import 'package:audio_tales/pages/auth/registration_page.dart';
import 'package:audio_tales/pages/other/profile_page.dart';
import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NewUserPage.routeName:
        return MaterialPageRoute(builder: (_) => NewUserPage());
      case RegistrationPage.routeName:
        return MaterialPageRoute(builder: (_) => RegistrationPage());
      case FinishedRegistrationPage.routeName:
        return MaterialPageRoute(builder: (_) => FinishedRegistrationPage());
      case TabsPage.routeName:
        return MaterialPageRoute(builder: (_) => TabsPage());
      case ProfilePage.routeName:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case MainPage.routeName:
        return MaterialPageRoute(builder: (_) => MainPage());
      case PermanentUserPage.routeName:
        return MaterialPageRoute(builder: (_) => PermanentUserPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('${settings.name} route not found'),
                  ),
                ));
    }
  }
}
