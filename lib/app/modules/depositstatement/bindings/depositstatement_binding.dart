import 'package:get/get.dart';

import '../controllers/depositstatement_controller.dart';

class DepositstatementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositstatementController>(
      () => DepositstatementController(),
    );
  }
}
