import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {



    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),

              Image.asset(
                'assets/new_main_logo.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              Spacer(),

              Text(
                "Welcome! User",
                style: TextStyle(
                    color: MyColor.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),

              // MyTextField("Email Address)"),
              // MyTextField("Password :"),
              MyTextField(
                hint: "Email Address",
                controller: controller.emailController,
                valueChanged: (val) {
                  controller.email.value = val;
                },
              ),

              MyTextField(
                hint: "Password :)",
                controller: controller.passController,
                valueChanged: (val) {
                  controller.pass.value = val;
                },
              ),
              SizedBox(
                height: 10,
              ),

              PrimaryButton(
                title: "Login",
                onTap: () async{
                  final storage = new FlutterSecureStorage();
                 await  storage.write(key: "userID",value: "3");
                  String? ID =await storage.read(key: "userID");
                  print(ID);

                  if (controller.email.isEmpty ||
                      controller.pass.isEmpty) {
                    SnackBarUtils.showError('Fill in blank fields');
                  } else {
                    Map data = {
                      "email": controller.email.value,
                      "password": controller.pass.value
                    };

                    controller.loginUser(data);
                  }
                },
              ),

              Spacer(),
            ],
          )),
    );
  }
}
