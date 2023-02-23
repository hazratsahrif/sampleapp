import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/bottomnav/views/bottomnav_view.dart';
import 'package:sampleapp/app/modules/depositstatement/views/depositstatement_view.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';

import '../controllers/withdraw_controller.dart';

class WithdrawRequestView extends GetView<WithdrawController> {
   WithdrawRequestView({Key? key}) : super(key: key);
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: ProfileRPSCustomPainter(),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
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
                              "WITHDRAWL REQUEST",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 82,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 18.0,bottom: 9),
                  //   child: Text(
                  //     "Withdrawl Statement Request",
                  //     style: TextStyle(
                  //         color: MyColor.light_blue,
                  //         fontSize: 20,
                  //         letterSpacing: 0,
                  //
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: MyTextField(hint: "Enter Amount", controller: textEditingController, valueChanged: (val){

                   }),
                 ),
                  PrimaryButton(title: "SUBMIT", onTap: (){})
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 89,
                width: double.infinity,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
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

  TableText2({required this.heading,required this.color,required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(heading,

        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: 14,
            color: color,
        ),
      ),
    );
  }
}