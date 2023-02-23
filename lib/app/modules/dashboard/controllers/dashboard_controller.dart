import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleapp/app/modules/market/controllers/market_controller.dart';

class DashboardController extends GetxController with GetSingleTickerProviderStateMixin{
  //TODO: Implement DashboardController
  // MarketController marketController = MarketController.instance;
  late TabController tabController;
  RxInt index=0.obs;
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    // tabController =TabController(length: 5, vsync: this);
    super.onInit();

  }
  Initial(TabController controller){
    controller =TabController(length: 5, vsync: this);
  }
  final count = 0.obs;

 @override
 void onClose() {
   super.onClose();
   tabController.dispose();
 }

  void increment() => count.value++;
}
