import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/models/feeData.dart';
import 'package:school_app/pages/fee_page/widgets/fee_widgets.dart';

class FeePage extends StatelessWidget {
  const FeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fee"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(KDefaultPadding),
                  topRight: Radius.circular(KDefaultPadding),
                ),
                color: const Color.fromARGB(255, 236, 227, 227),
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(KDefaultPadding),
                itemCount: fee.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: KDefaultPadding),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(KDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(KDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: KTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              FeeDetalRow(
                                title: "Receipe No",
                                statusValue: fee[index].receipeNo,
                              ),
                              SizedBox(
                                height: KDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetalRow(
                                title: "Month",
                                statusValue: fee[index].month,
                              ),
                              sizedBox,
                              FeeDetalRow(
                                title: "Payment Date",
                                statusValue: fee[index].date,
                              ),
                              sizedBox,
                              FeeDetalRow(
                                title: "Status",
                                statusValue: fee[index].paymentStatus,
                              ),
                              sizedBox,
                              SizedBox(
                                height: KDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetalRow(
                                title: "Total Amount",
                                statusValue: fee[index].totalAmount,
                              ),
                            ],
                          ),
                        ),
                        FeeButton(
                            title: fee[index].btnStatus,
                            iconData: fee[index].btnStatus == "Paid"
                                ? Icons.download_outlined
                                : Icons.arrow_forward_outlined,
                            onPress: () {}),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
