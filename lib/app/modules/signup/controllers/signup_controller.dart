import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sampleapp/api/respository/auth_repository.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/constant/api_response.dart';
import 'package:sampleapp/utils/easy_loading.dart';

class SignupController extends GetxController {
 late final TextEditingController nameController;
 late final TextEditingController emailController;
 late final TextEditingController countryController;
 late final TextEditingController mobileNoController;
 late final TextEditingController whatsAppNoController;
 late final TextEditingController passController  ;
 late final TextEditingController cPassController;
 late final TextEditingController answerController;
  final _myRepo = AuthRepository();
  RxString name = ''.obs;
  RxString pass = ''.obs;
  RxString country = ''.obs;
  RxString cPass = ''.obs;
  RxString email = ''.obs;
  RxString phoneNo=''.obs;
  RxString whatsAppNo=''.obs;
  late final key;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
   this.nameController= TextEditingController();
   this.emailController= TextEditingController();
   this.countryController= TextEditingController();
   this.mobileNoController= TextEditingController();
   this.whatsAppNoController= TextEditingController();
   this.passController= TextEditingController();
   this.cPassController= TextEditingController();
   this.answerController= TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> registerUserUser(dynamic data) async {

      Loading().showEasyLoading("loading...");

    _myRepo.signUpUser(data).then((value) async {
      var responseData = json.decode(value);
      String message =responseData["status"]["message"];
      await SnackBarUtils.showSnackBar(message);
      print(responseData["status"]["message"]);
      if(message.contains("Registration Successfull") ){

        Future.delayed(Duration(seconds: 1),(){
          Get.toNamed(Routes.LOGIN);
        });
      }
      else{
      }


      Loading().easyLoadingSuccess();
    }).onError((error, stackTrace){
      Loading().dismissEasyLoading();
      // if(error.toString()== ApiResponseResult.signUpUserAlreadyExist){
        SnackBarUtils.showError(error.toString());
      // }
      print("hazrat jani${error.toString()}");

    });
  }
}
