import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/bankaccount/views/verification_successful_view.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/TextFieldWithTitle.dart';

import '../controllers/bankaccount_controller.dart';

class AccountVerificationView extends GetView<BankaccountController> {
  const AccountVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Account Verification',),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 22,),
          TextFieldWithTitle(
            title: "Enter the amount",
            hint: "Credited Amount",
            isSuffix: false,
            onTap: null,
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Notification",
              style: TextStyle(
                  color: MyColor.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
            color: MyColor.light_blue,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Please enyer the amount send to your Bank account and verify",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  letterSpacing: 0.4
                    ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          PrimaryButton(title: "Verify Now ",onTap: (){
            Get.to(VerificationSuccessView());
          },),

        ],
      ),
    );
  }
}




