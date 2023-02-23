import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/TextFieldWithTitle.dart';

import '../controllers/bankaccount_controller.dart';

class BankaccountView extends GetView<BankaccountController> {
  const BankaccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:'Bank Account' ,),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 22,),
          TextFieldWithTitle(
            title: "Account Holder Name",
            hint: "Enter your name",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "Account No",
            hint: "Enter your email address",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "IFSC Code",
            hint: "Enter your mobile no",
            isSuffix: false,
            onTap: null,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Account Status",
              style: TextStyle(
                  color: MyColor.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Card(
            margin: EdgeInsets.all(16),
            color: MyColor.light_blue,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Your account is not verified, Please wait until admin send a minimal amount in your account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  letterSpacing: 0.6
                    ),
              ),
            ),
          ),
          PrimaryButton(title: "Save",onTap: (){
            Get.toNamed(Routes.ACCOUNTVERIFICATION);
            print("ahahha");
          },),

        ],
      ),
    );
  }
}


