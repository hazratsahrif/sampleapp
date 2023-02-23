import 'package:get/get.dart';
import 'package:sampleapp/app/modules/bottomnav/controllers/bottomnav_controller.dart';

class TradinghistoryController extends GetxController {
  //TODO: Implement TradinghistoryController
  final tradingController = BottomnavController.instance;

  final count = 0.obs;
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

  void increment() => count.value++;
}
