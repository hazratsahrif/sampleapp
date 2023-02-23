import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MarketController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement MarketController
  static MarketController get instance => Get.find<MarketController>();


  late TabController tabController;
  RxInt index=0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 5);
  }


  final count = 0.obs;


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tabController.dispose();

  }


  void increment() => count.value++;
}
