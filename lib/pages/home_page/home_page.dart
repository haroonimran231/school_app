import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/pages/assignment_page/assignment_page.dart';
import 'package:school_app/pages/dateSheet_page/dateSheet_page.dart';
import 'package:school_app/pages/fee_page/fee_page.dart';
import 'package:school_app/pages/my_profile_page/profile_page.dart';
import 'package:school_app/widgets/Home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onPress});
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(KDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hi ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "Haroon",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: KDefaultPadding,
                        ),
                        Text(
                          "Class X-II A | Roll no:22",
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 14,
                                  ),
                        ),
                        SizedBox(
                          height: KDefaultPadding,
                        ),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            color: KTextWhiteColor,
                            borderRadius:
                                BorderRadius.circular(KDefaultPadding),
                          ),
                          child: Center(
                            child: Text(
                              "2023-2024",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: KTextBlackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: KDefaultPadding / 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: CircleAvatar(
                        minRadius: 50.0,
                        maxRadius: 50.0,
                        backgroundColor: KSecondaryColor,
                        backgroundImage:
                            AssetImage("assets/images/student_profile.jpg"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: KDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: KTextWhiteColor,
                          borderRadius: BorderRadius.circular(KDefaultPadding),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Attendence",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: KTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "90.82%",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 25.0,
                                      color: KTextBlackColor,
                                      fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FeePage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: KTextWhiteColor,
                          borderRadius: BorderRadius.circular(KDefaultPadding),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Fees Due",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: KTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "600\$",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 25.0,
                                      color: KTextBlackColor,
                                      fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: KTextWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(KDefaultPadding * 3),
                  topRight: Radius.circular(KDefaultPadding * 3),
                ),
              ),

              child: InkWell(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      // width: 10,
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: onPress,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/quiz.png",
                                  height: 60.0,
                                  width: 60.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Take Quiz",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AssignmentPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/assignments.png",
                                  height: 80.0,
                                  width: 88.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Assignments",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/holidays.png",
                                  height: 40.0,
                                  width: 40.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Holidays",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Timetable.png",
                                  height: 50.0,
                                  width: 50.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Time\ntable",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/result.png",
                                  height: 100.0,
                                  width: 100.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Results",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DateSheetPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/datesheet.png",
                                  height: 45.0,
                                  width: 45.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Date\nsheet",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/ask.png",
                                  height: 70.0,
                                  width: 70.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Ask\nQuestions",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/gallery.png",
                                  height: 45.0,
                                  width: 45.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Gallery",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/leaveApplication.png",
                                  height: 50.0,
                                  width: 50.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Leave\nApllication",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/changePassword.png",
                                  height: 45.0,
                                  width: 45.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Change\nPasword",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/events.png",
                                  height: 60.0,
                                  width: 60.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Events",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: KDefaultPadding / 2,
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              color: KPrimaryColor,
                              borderRadius:
                                  BorderRadius.circular(KDefaultPadding / 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/logOut.png",
                                  height: 50.0,
                                  width: 50.0,
                                  // color: Colors.transparent,
                                ),
                                Text(
                                  "Logout",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
