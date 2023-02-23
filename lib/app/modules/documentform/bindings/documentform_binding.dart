import 'package:get/get.dart';

import '../controllers/documentform_controller.dart';

class DocumentformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentformController>(
      () => DocumentformController(),
    );
  }
}
