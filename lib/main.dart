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
          appBarTheme: AppBarTheme(color: KPrimaryColor, elevation: 0),
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                    bodyText1: TextStyle(
                        color: KTextWhiteColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    bodyText2: TextStyle(
                      color: KTextWhiteColor,
                      fontSize: 28.0,
                    ),
                    subtitle1: TextStyle(
                        color: KTextWhiteColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                    subtitle2: TextStyle(
                        color: KTextWhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                  )),
      // initialRoute: SplashPage.routeName,
      // routes: routes,
      home: SplashPage(),
    );
  }
}
