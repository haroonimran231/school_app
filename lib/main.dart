import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Brain',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          primaryColor: KPrimaryColor,
          textTheme: GoogleFonts.sourceSansProTextTheme()),
      // initialRoute: SplashPage.routeName,
      // routes: routes,
      home: SplashPage(),
    );
  }
}
