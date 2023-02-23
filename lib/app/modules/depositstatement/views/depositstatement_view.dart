import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sampleapp/api/model/Data.dart';

import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/withdraw/views/withdraw_view.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';
import '../controllers/depositstatement_controller.dart';
class DepositstatementView extends GetView<DepositstatementController> {
  const DepositstatementView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Map data = {
      "user_id": "3"
    };
    controller.getDepositResult(data);
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
                              "DEPOSIT",
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
                    child: Center(
                      child: Text(
                        "Deposit Statement",
                        style: TextStyle(
                            color: MyColor.light_blue,
                            fontSize: 20,
                            letterSpacing: 0,

                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  Obx(() {
                    return Container(
                      child: controller.isLoading.value
                          ? Center(child: CircularProgressIndicator(color: MyColor.blue,))
                          : controller.depositDataList.length == 0 ?
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
                            itemCount: controller.depositDataList.value.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DepositCard(list: controller.depositDataList[index],);
                            }),

                      ),
                    );
                  })


                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: SizedBox(
            //     height: 89,
            //     width: double.infinity,
            //     child: CustomPaint(
            //       painter: RPSCustomPainter(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class DepositCard extends StatelessWidget {
  const DepositCard({
    Key? key,
    required this.list
  }) : super(key: key);
  final DespositData list;


  @override
  Widget build(BuildContext context) {
    final f = new DateFormat('yy-MM-dd');

    return Card(
      color: MyColor.sky_color,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Table(
        children: [
          TableRow(
              children: [
                Center(child: TableText(heading: "Date",)),
                Center(child: TableText(heading: "Tns ID",)),
                Center(child: TableText(heading: "Tns Type")),
                Center(child: TableText(heading: "Amount",)),
                Center(child: TableText(heading: "Status",)),

              ]
          ),
          TableRow(
              children: [
                Center(child: TableText2(heading: f.format(DateTime.parse(list.date.toString())).toString(),
                  color: MyColor.light_blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,)),
                Center(child: TableText2(heading: list.tnsID.toString(),
                    color: MyColor.light_blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12)),
                Center(child: TableText2(heading: list.tnsType.toString(),
                    color: MyColor.light_blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12)),
                Center(child: TableText2(heading: list.amount.toString(),
                    color: MyColor.light_blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12)),
                Center(child: TableText2(heading: list.status.toString(),
                    color: MyColor.light_blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12)),

              ]
          )
        ],
      ),
    );
  }
}

class TableText extends StatelessWidget {
  String heading;

  TableText({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12),
      child: Text(heading,

        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.black
        ),
      ),
    );
  }
}
