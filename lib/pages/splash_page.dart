import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/pages/login_page/login_page.dart';

class SplashPage extends StatelessWidget {
  static var routeName;

  // static var routeName;

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "School",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: KTextWhiteColor,
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0),
                ),
                Text(
                  "Brain",
                  style: GoogleFonts.pattaya(
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      color: KTextWhiteColor,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Image.asset(
              "assets/images/splash.png",
              height: 160.0,
              width: 160,
            ),
          ],
        ),
      ),
    );
  }
}
