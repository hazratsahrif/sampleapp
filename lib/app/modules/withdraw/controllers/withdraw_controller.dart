import 'dart:convert';

import 'package:get/get.dart';
import 'package:sampleapp/api/model/Data.dart';
import 'package:sampleapp/api/model/GetWithdrawlStatementModel.dart';
import 'package:sampleapp/api/model/Getwithdrawdata.dart';
import 'package:sampleapp/api/respository/auth_repository.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/utils/easy_loading.dart';

class WithdrawController extends GetxController {
  //TODO: Implement WithdrawController

  final count = 0.obs;
  RxBool isLoading = true.obs;
  final _myRepo = AuthRepository();
  Rx<GetWithdrawlStatementModel> withdrawResponse = GetWithdrawlStatementModel().obs;
  RxList<Getwithdrawdata> withdrawDataList = <Getwithdrawdata>[].obs;
  @override
  void onInit() {
    super.onInit();
    Map data = {
      "user_id":"3"
    };
    // getWithResult(data);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getWithResult(dynamic data) async {
    Loading().showEasyLoading("loading...");
    isLoading.value = true;
    print(data.toString());
    _myRepo.getWithDarwResult(data).then((value) async {
      final Map parsed = json.decode(value);
      final response = GetWithdrawlStatementModel.fromJson(parsed);
      isLoading.value = false;
      if(response!.status!.data!.length!=0){
        print("if");
        withdrawDataList.value = response.status!.data!;
      }
      else{
        print("else");
        // if(error.toString()== ApiResponseResult.signUpUserAlreadyExist){
        SnackBarUtils.showError(response!.status!.data.toString());
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
