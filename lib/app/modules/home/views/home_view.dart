import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/login/views/login_view.dart';
import 'package:sampleapp/app/modules/signup/views/signup_view.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  List<Widget> list = [
    LoginView(),
    SignupView(),
  ];

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: MyColor.light_blue
              ),
              flexibleSpace: Container(
                height: 0,
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  color: MyColor.light_gray,
                  child: TabBar(
                    labelStyle: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700,
                        color: MyColor.blue
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: MyColor.blue,
                    indicatorColor: MyColor.blue,
                    isScrollable: false,

                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (index) {
                      controller.index.value = index;
                      print(index);
                    },


                    enableFeedback: false,
                    tabs: [
                      Tab(text: "Login",),
                      Tab(text: "SignUp",),

                      // Tab(text: null,
                      //
                      //   child: Obx(() {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           color: controller.index.value == 0
                      //               ? Colors.yellow
                      //               : null,
                      //           borderRadius: BorderRadius.circular(8)
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text("Share", style: TextStyle(color: MyColor.blue,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w800),),
                      //       ),
                      //     );
                      //   }),
                      // ),
                      // Tab(text: null,
                      //
                      //   child: Obx(() {
                      //     return Container(
                      //
                      //       decoration: BoxDecoration(
                      //           color: controller.index.value == 1
                      //               ? Colors.yellow
                      //               : null,
                      //           borderRadius: BorderRadius.circular(8)
                      //       ),
                      //
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text("Indices", style: TextStyle(
                      //             color: MyColor.blue,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w800),),
                      //       ),
                      //     );
                      //   }),
                      // ),
                      // Tab(text: null,
                      //
                      //   child: Obx(() {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           color: controller.index.value == 2
                      //               ? Colors.yellow
                      //               : null,
                      //           borderRadius: BorderRadius.circular(8)
                      //       ),
                      //
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text("Forex", style: TextStyle(color: MyColor.blue,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w800),),
                      //       ),
                      //     );
                      //   }),
                      // ),
                      // Tab(text: null,
                      //
                      //   child: Obx(() {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           color: controller.index.value == 3
                      //               ? Colors.yellow
                      //               : null,
                      //           borderRadius: BorderRadius.circular(8)
                      //       ),
                      //
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text("Commodities", style: TextStyle(
                      //             color: MyColor.blue,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w800),),
                      //       ),
                      //     );
                      //   }),
                      // ),
                      // Tab(text: null,
                      //
                      //   child: Obx(() {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           color: controller.index.value == 4
                      //               ? Colors.yellow
                      //               : null,
                      //           borderRadius: BorderRadius.circular(8)
                      //       ),
                      //
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text(
                      //           "Crypto", style: TextStyle(color: MyColor.blue,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w800),),
                      //       ),
                      //     );
                      //   }),
                      // ),

                      // Add Tabs here
                    ],
                  ),
                ),
              ),
              backgroundColor: MyColor.light_blue,
            ),
            body: TabBarView(

              children: [
                LoginView(),
                SignupView(),


              ],
            ),
          ),
      );
  }
}
