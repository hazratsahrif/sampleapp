import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/modules/home/controllers/home_controller.dart';

class SplashView extends GetView<HomeController> {
   SplashView({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/new_main_logo.png',
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}
