import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        actions: [
          InkWell(
            onTap: () {
              //send report management if u want
            },
            child: Container(
              padding: EdgeInsets.only(right: KDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred_outlined,
                  ),
                  khalfWidthsizedBox,
                  Text(
                    "Repiort",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: KTextWhiteColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: KPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(KDefaultPadding * 2),
                  bottomLeft: Radius.circular(KDefaultPadding * 2),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: KSecondaryColor,
                    backgroundImage:
                        AssetImage("assets/images/student_profile.jpg"),
                  ),
                  kwidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Haroon Imran",
                        style: Theme.of(context).textTheme.subtitle1!,
                      ),
                      Text(
                        "Class X-II | Roll no:12",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontSize: 14.0),
                      )
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    titlte: "Registration Number", value: "2023-ASDF-2024"),
                ProfileDetailRow(titlte: "Academic Year", value: "2023-2024"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(titlte: "Admission Class ", value: "X-II"),
                ProfileDetailRow(titlte: "Admission Number", value: "000123"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    titlte: "Date Of Admission", value: "1 Aug, 2023"),
                ProfileDetailRow(titlte: "Date Of Birth", value: "15-02-2004"),
              ],
            ),
            ProfileDetailColumn(
              title: "Email",
              value: "haroonimran231@gmail.com",
            ),
            ProfileDetailColumn(
              title: "Father Name",
              value: "M.Imran",
            ),
            ProfileDetailColumn(
              title: "Mother Name",
              value: "xyz",
            ),
            ProfileDetailColumn(
              title: "Phone Number",
              value: "03310405737",
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow(
      {super.key, required this.titlte, required this.value});
  final String titlte;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: KDefaultPadding / 4, left: KDefaultPadding / 4),
      width: MediaQuery.of(context).size.width / 2,
      // color: KPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titlte,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: KTextLightColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              khalfsizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: KTextBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              khalfsizedBox,
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Divider(
                    thickness: 1.0,
                  ))
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: KTextLightColor, fontSize: 15.0),
              ),
              khalfsizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: KTextBlackColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600),
              ),
              khalfWidthsizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
