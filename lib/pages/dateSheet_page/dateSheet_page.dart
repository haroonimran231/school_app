import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/models/dateSheet.dart';

class DateSheetPage extends StatelessWidget {
  const DateSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateSheet"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: KTextWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(KDefaultPadding),
            topRight: Radius.circular(KDefaultPadding),
          ),
        ),
        child: ListView.builder(
            itemCount: dateSheet.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: KDefaultPadding / 2, right: KDefaultPadding / 2),
                padding: EdgeInsets.all(KDefaultPadding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: KDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].date.toString(),
                              style: TextStyle(
                                  color: KTextBlackColor,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              dateSheet[index].monthName,
                              style: TextStyle(
                                  color: KTextBlackColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].subjectName,
                              style: TextStyle(
                                  color: KTextBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                            Text(
                              dateSheet[index].dayName,
                              style: TextStyle(
                                  color: KTextBlackColor,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13.0),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${dateSheet[index].time}",
                              style: TextStyle(
                                  color: KTextLightColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: KDefaultPadding,
                      child: Divider(
                        thickness: 0.5,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
