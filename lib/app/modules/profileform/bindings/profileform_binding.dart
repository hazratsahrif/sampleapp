import 'package:get/get.dart';

import '../controllers/profileform_controller.dart';

class ProfileformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileformController>(
      () => ProfileformController(),
    );
  }
}
