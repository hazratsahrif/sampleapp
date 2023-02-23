import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/utils/GetUserID.dart';

class PortfolioController extends GetxController {
  //TODO: Implement PortfolioController


  final storage = GetStorage();
  GetUserID id = new GetUserID();
  String? userID="";
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


}
