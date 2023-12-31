import 'package:flutter/material.dart';
import 'package:school_app/pages/home_page/home_page.dart';
import 'package:school_app/pages/login_page/login_page.dart';
import 'package:school_app/pages/my_profile_page/profile_page.dart';
import 'package:school_app/pages/splash_page.dart';

Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  LoginPage.routeName: (context) => const SplashPage(),
  // ProfilePage.routeName: (context) =>  HomePage(),
};
