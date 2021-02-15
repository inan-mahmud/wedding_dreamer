import 'package:flutter/material.dart';
import 'package:wedding_app/details.dart';
import 'package:wedding_app/login.dart';
import 'package:wedding_app/photolist.dart';
import 'package:wedding_app/splash.dart';
import 'package:wedding_app/submit.dart';
import 'package:wedding_app/success.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    PhotoList.tag: (context) => PhotoList(),
    Details.tag: (context) => Details(),
    Submit.tag: (context) => Submit(),
    Success.tag: (context) => Success(),
    AnimatedSplashScreen.tag: (context) => AnimatedSplashScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
