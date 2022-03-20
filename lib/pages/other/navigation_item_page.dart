import 'package:audio_tales/routes/routes.dart';
import 'package:flutter/material.dart';

class NavigationItemPage extends StatelessWidget {
  const NavigationItemPage({
    Key? key,
    required this.navigatorKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => AppRoutes.generateTabRoute(navigatorKey));
        },
      ),
    );
  }
}
