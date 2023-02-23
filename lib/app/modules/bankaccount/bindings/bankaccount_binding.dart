import 'package:get/get.dart';

import '../controllers/bankaccount_controller.dart';

class BankaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BankaccountController>(
      () => BankaccountController(),
    );
  }
}
