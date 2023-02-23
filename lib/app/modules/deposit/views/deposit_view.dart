import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/bottomnav/views/bottomnav_view.dart';
import 'package:sampleapp/app/modules/profile/views/profile_view.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';
import 'package:sampleapp/app/widgets/PortfolioConatiner.dart';
import 'package:sampleapp/app/widgets/TextFieldWithTitle.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';

import '../controllers/deposit_controller.dart';

class DepositView extends GetView<DepositController> {
  TextEditingController textEditingController = TextEditingController();
  DepositView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 12,),
                          Text(
                            "SCAN & PAY",
                            style: TextStyle(
                                color: MyColor.light_blue,
                                fontSize: 22,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          SvgPicture.asset(
                            "assets/QR_Code_Example.svg",
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "DEPOSIT FORM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            color: MyColor.light_blue,
                            margin: EdgeInsets.symmetric(vertical: 12),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Deposit Amount",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w700),
                          ),
                          MyTextField(
                            hint: "Enter Deposit Amount",
                            controller: textEditingController,
                            valueChanged: (String value) {},
                          ),
                          Text(
                            "Transaction Id",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w700),
                          ),
                          MyTextField(
                            hint: "Enter Transaction Id",
                            controller: textEditingController,
                            valueChanged: (String value) {},
                          ),
                          Text(
                            "Transaction Type",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w700),
                          ),
                          MyTextField(
                            hint: "-Select Type-",
                            controller: textEditingController,
                            valueChanged: (String value) {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            elevation: 5.0,
                            minWidth: 150.0,
                            height: 35,
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: MyColor.light_blue,
                          ),
                        ],
                      ),
                    ),
                  ),
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
