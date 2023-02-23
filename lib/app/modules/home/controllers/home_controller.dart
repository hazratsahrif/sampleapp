import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/storage/Storage.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final index = 0.obs;
  String token="";
  RxBool isSplash = true.obs;
  SecureStorage secureStorage = new SecureStorage();

  @override
  void onInit() async {
    super.onInit();
    isLogedIn();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void isLogedIn() async{
    secureStorage.readSecureData("userID").then((value) => token=value);
    print(token);
    print("after token");
    if(token==null){
      Future.delayed(Duration(seconds: 3),(){
        Get.offNamed(Routes.HOME);

      });
    }
    else{
      Future.delayed(Duration(seconds: 2),(){
        Get.offNamed(Routes.BOTTOMNAV);
      });


    }
  }

}
