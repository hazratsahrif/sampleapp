import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/api/model/RegistrationModel.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {


  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                ),
                Image.asset(
                  'assets/new_main_logo.png',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Welcome! User",
                  style: TextStyle(
                      color: MyColor.blue,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                MyTextField(
                  hint:
                  "Full Name (As per PAN card)",
                  controller: controller.nameController,
                  valueChanged:(val) {
                    controller.name.value = val;
                  },
                ),

                MyTextField(

                    hint:"Email Address)",
                  controller: controller.emailController,
                  valueChanged:(val) {
                    controller.email.value = val;
                  },

                ),
                MyTextField(

                  hint:"Country:",
                  controller: controller.countryController,
                  valueChanged:(val) {
                    controller.country.value = val;
                  },

                ),
                MyTextField(

                    hint: "Mobile Number.:)",
                  controller: controller.mobileNoController,
                  valueChanged:(val) {
                    controller.phoneNo.value = val;
                  },
                ),
                MyTextField(

                  hint: "WhatsApp Number.:)",
                  controller: controller.whatsAppNoController,
                  valueChanged:(val) {
                    controller.whatsAppNo.value = val;
                  },
                ),
                MyTextField(hint: "Password :",
                  controller: controller.passController,
                  valueChanged:(val) {
                    controller.pass.value = val;
                  },
                ),
                MyTextField(hint: "ReType Password:",
                  controller: controller.cPassController,
                  valueChanged:(val) {
                    controller.cPass.value = val;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: MyColor.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 13.0, horizontal: 28),
                          child: Text(
                            "8+1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MyTextField(hint: "Answer",
                          controller: controller.answerController,
                          valueChanged:(val) {
                            // controller.cPass.value = cPassController.text;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black26,
                  height: 2.4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: MaterialButton(
                    onPressed: () {
                      if(
                         controller.email.value.isEmpty
                      || controller.name.value.isEmpty
                      || controller.pass.value.isEmpty
                      || controller.cPass.value.isEmpty
                      || controller.phoneNo.value.isEmpty
                      || controller.whatsAppNo.value.isEmpty
                      ){
                        SnackBarUtils.showError(
                            'Fill in blank fields');
                      }

                      else{

                        RegistrationModel model=new RegistrationModel(
                            user_name: controller.name.value,
                            user_email: controller.email.value,
                            user_country: controller.country.value,
                            user_mobile: controller.phoneNo.value,
                            user_whatsapp: controller.whatsAppNo.value,
                            user_password: controller.pass.value,
                            user_cpassword: controller.cPass.value);


                        controller.registerUserUser(model.toJson());




                      }

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    elevation: 5.0,
                    minWidth: 150.0,
                    height: 35,
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    color: MyColor.light_blue,
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  height: 2.4,
                ),
              ],
            ),
          )),
    );
  }
}
