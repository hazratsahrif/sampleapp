import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/utils/FormatedDate.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';
import '../controllers/withdraw_controller.dart';

class WithdrawView extends GetView<WithdrawController> {
  WithdrawView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    controller.getWithResult({"user_id": "3"});
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: ProfileRPSCustomPainter(),
              child: Container(
                height: 100,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 32.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              "WITHDRAWL",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 58.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 82,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 9),
                    child: Text(
                      "Withdrawl Statement",
                      style: TextStyle(
                          color: MyColor.light_blue,
                          fontSize: 20,
                          letterSpacing: 0,

                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Obx(() {
                    return Container(
                      child: controller.isLoading.value
                          ? Center(child: CircularProgressIndicator(
                        color: MyColor.blue,))
                          : controller.withdrawDataList.length == 0 ?
                      Center(
                        child: Text(
                          "No Data found",
                          style: TextStyle(
                              color: MyColor.light_blue,
                              fontSize: 20,
                              letterSpacing: 0,

                              fontWeight: FontWeight.bold),
                        ),
                      ) : Expanded(
                        child:
                        ListView.builder(
                            itemCount: controller.withdrawDataList.length,
                            itemBuilder: (BuildContext context, int index) {
                              FormatDated format = new FormatDated();
                              String date = format.format(controller.withdrawDataList[index].date!).toString();
                              print(date);
                              return Card(
                                color: MyColor.sky_color,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 8),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Table(
                                    children: [
                                      TableRow(
                                          children: [
                                            Center(child: TableText2(
                                              heading: "Date",
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,)),
                                            Center(child: TableText2(
                                                heading: "Amount",
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                            Center(child: TableText2(
                                                heading: "Status",
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),

                                          ]
                                      ),
                                      TableRow(
                                          children: [
                                            Center(child: TableText2(
                                                heading: date,
                                                color: MyColor.light_blue,
                                                fontWeight: FontWeight.w600)),
                                            Center(child: TableText2(
                                                heading: "500",
                                                color: MyColor.light_blue,
                                                fontWeight: FontWeight.w600)),
                                            Center(child: TableText2(
                                                heading: "Pending",
                                                color: MyColor.light_blue,
                                                fontWeight: FontWeight.w600)),

                                          ]
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),

                      ),
                    );
                  }),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class TableText2 extends StatelessWidget {
  String heading;
  Color color;
  FontWeight fontWeight;
  double? fontSize;

  TableText2(
      {required this.heading, required this.color, required this.fontWeight, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(heading,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize ?? 14,
          color: color,

        ),
      ),
    );
  }
}