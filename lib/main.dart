import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'TTNorms',
      ),
      home: TabsPage(selectedPage: 0),
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorKeys.mainKey,
    );
  }
}
