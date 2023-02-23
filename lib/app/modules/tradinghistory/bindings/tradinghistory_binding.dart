import 'package:get/get.dart';

import '../controllers/tradinghistory_controller.dart';

class TradinghistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TradinghistoryController>(
      () => TradinghistoryController(),
    );
  }
}
