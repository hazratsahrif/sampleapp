import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/TextFieldWithTitle.dart';

import '../controllers/bankaccount_controller.dart';

class VerificationSuccessView extends GetView<BankaccountController> {
  const VerificationSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: MyColor.light_blue,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32,),
                  Text(
                    "Verification",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 6,),

                  Text(
                    "Successful",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 22,),
                ],
              ),
            ),
            Spacer(),

            Center(child: Image.asset('assets/verfied.jpeg', height: MediaQuery.of(context).size.height/5, )),
            Spacer(),
            PrimaryButton(title: "    Done    ", onTap: (){
              Get.back();
            }),
            Spacer(),

          ],
        ),
      ),
    );
  }
}




