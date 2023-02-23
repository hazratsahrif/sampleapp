import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/api/model/LoginResponse.dart';
import 'package:sampleapp/api/respository/auth_repository.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/storage/Storage.dart';
import 'package:sampleapp/utils/easy_loading.dart';

import '../../../utils/SnackBarUtils.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  late final TextEditingController emailController;
  late final TextEditingController passController;
  final storage =  new SecureStorage();
  final _myRepo = AuthRepository();
  RxString email = ''.obs;
  RxString pass = ''.obs;
  final count = 0.obs;
  late final key ;
  @override
  void onInit() {
    super.onInit();
    this.emailController=TextEditingController();
    this.passController=TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loginUser(dynamic data) async {
    Loading().showEasyLoading("loading...");
    _myRepo.loginUser(data).then((value) async {
      var responseData = json.decode(value);
      SnackBarUtils.showSnackBar(responseData["status"]["message"]);
      final Map parsed = json.decode(value);
      final signUp = LoginResponse.fromJson(parsed);
      if(responseData["status"]["message"]=="Login Successfull") {
        storage.writeSecureData("userID", signUp.status!.data!.id!);
        print(storage.readSecureData("userID"));
          Get.offNamed(Routes.BOTTOMNAV);
      }
      else{
        ///
      }
      Loading().easyLoadingSuccess();
    }).onError((error, stackTrace){
      Loading().dismissEasyLoading();
      // if(error.toString()== ApiResponseResult.signUpUserAlreadyExist){
      // SnackBarUtils.showError(error.toString());
      // }
      print("hazrat jani${error.toString()}");

    });
  }
}
