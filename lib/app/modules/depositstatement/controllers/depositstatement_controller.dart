import 'dart:convert';

import 'package:get/get.dart';
import 'package:sampleapp/api/model/Data.dart';
import 'package:sampleapp/api/model/GetDepositStatementModel.dart';
import 'package:sampleapp/api/model/LoginResponse.dart';
import 'package:sampleapp/api/respository/auth_repository.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/utils/easy_loading.dart';

class DepositstatementController extends GetxController {
  //TODO: Implement DepositstatementController

  final _myRepo = AuthRepository();
  RxBool isLoading = true.obs;
  Rx<GetDepositStatementModel> depositResponse = GetDepositStatementModel().obs;
  RxList<DespositData> depositDataList = <DespositData>[].obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getDepositResult(dynamic data) async {
    Loading().showEasyLoading("loading...");
    isLoading.value = true;
    print(data.toString());
    _myRepo.getAllDepositResult(data).then((value) async {
      var responseData = json.decode(value);
      print(responseData["status"]["message"]);
      final Map parsed = json.decode(value);
      final response = GetDepositStatementModel.fromJson(parsed);
      print(response.status!.data!.length);
      isLoading.value = false;
      if(response.status!.data!.length!=0){
        depositDataList.value = response.status!.data!;
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
