import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/models/assigment_data.dart';

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignments"),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: KTextWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(KDefaultPadding),
                topRight: Radius.circular(KDefaultPadding),
              ),
            ),
            child: ListView.builder(
              padding: EdgeInsets.all(KDefaultPadding),
              itemCount: assignment.length,
              itemBuilder: (context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: KDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(KDefaultPadding),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(KDefaultPadding),
                            color: KTextWhiteColor,
                            boxShadow: [
                              BoxShadow(color: KTextLightColor, blurRadius: 2.0)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: KSecondaryColor.withOpacity(0.4),
                                borderRadius:
                                    BorderRadius.circular(KDefaultPadding),
                              ),
                              child: Center(
                                child: Text(
                                  assignment[index].subjectName,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: KPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                            khalfsizedBox,
                            Text(
                              assignment[index].topicName,
                              style: TextStyle(
                                color: KTextBlackColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            khalfsizedBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  assignment[index].assignDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: KTextLightColor),
                                ),
                                Text(
                                  assignment[index].lastDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: KTextBlackColor),
                                ),
                              ],
                            ),
                            khalfsizedBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  assignment[index].assignDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: KTextLightColor),
                                ),
                                Text(
                                  assignment[index].lastDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: KTextBlackColor),
                                ),
                              ],
                            ),
                            khalfsizedBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  assignment[index].assignDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: KTextLightColor),
                                ),
                                Text(
                                  assignment[index].lastDate,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: KTextBlackColor),
                                ),
                              ],
                            ),
                            khalfsizedBox,
                            if (assignment[index].status == "Pending")
                              GestureDetector(
                                child: Container(
                                  width: double.infinity,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          KSecondaryColor,
                                          KPrimaryColor
                                        ],
                                        begin: FractionalOffset(0.0, 0.0),
                                        end: FractionalOffset(0.5, 0.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                    borderRadius:
                                        BorderRadius.circular(KDefaultPadding),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "To be Submitted",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
