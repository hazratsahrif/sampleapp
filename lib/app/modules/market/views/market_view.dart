import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/market/views/share_view.dart';

import '../controllers/market_controller.dart';


class MarketView extends GetView<MarketController> {
  MarketView({Key? key}) : super(key: key);
  MarketController controller = Get.put(MarketController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
            preferredSize: Size.fromHeight(0),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),

                  color: Colors.yellow),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              onTap: (index) {
                controller.index.value = index;
                print(index);
              },
              indicatorWeight: 0,
              labelColor: MyColor.blue,
              unselectedLabelColor: Colors.white,

              labelStyle: TextStyle(color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
              isScrollable: true,
              indicatorColor: MyColor.light_blue,
              enableFeedback: false,
              tabs: [
                Tab(text: "Share",),
                Tab(text: "Indices",),
                Tab(text: "Forex",),
                Tab(text: "Commodities",),
                Tab(text: "Crypto",),

                // Add Tabs here
              ],
            ),
          ),
          backgroundColor: MyColor.light_blue,
        ),
        body: TabBarView(
          children: [
            ShareView(),
            ShareView(),
            ShareView(),
            ShareView(),
            ShareView(),

          ],
        ),
      ),
    );

    ;
  }
}
