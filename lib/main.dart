import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:audio_tales/pages/other/splash_screen_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegistrationBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'TTNorms',
        ),
        home: SplashScreenPage(),
        onGenerateRoute: AppRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        navigatorKey: NavigatorKeys.mainKey,
      ),
    );
  }
}



//  splashscreen page get rid of getState ! 