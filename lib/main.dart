import 'package:agriculture_flutter_app/screens/splash.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constant.dart';
import 'navigator_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<CustomRouter>(
        router: CustomRouter(),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffA53B46),
        textTheme: TextTheme(
          headline: TextStyle(
            fontFamily: 'Montserrat',
            foreground: Paint()..shader = linearGradient,
            fontSize: 24,
          ),
          display4: TextStyle(
            fontFamily: 'Montserrat',
            foreground: Paint()..shader = linearGradient,
            fontSize: 50,
          ),
          display3: TextStyle(
            fontFamily: 'DNT',
            color: Colors.white,
            fontSize: 28,
          ),
          display2: TextStyle(
            fontFamily: 'DNT',
            color: Colors.black,
            fontSize: 28,
          ),
          display1: TextStyle(
            fontFamily: 'DNT',
            color: Colors.black,
            fontSize: 22,
          ),
          body1: TextStyle(
            fontFamily: 'DNT',
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      title: 'frame store',
      home: Splash(),
    );
  }
}
