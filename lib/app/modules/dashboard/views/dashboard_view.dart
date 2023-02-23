import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/dashboard/tabs/views/dashboard_sheare_view.dart';
import 'package:sampleapp/app/modules/market/views/share_view.dart';
import 'package:sampleapp/app/widgets/GraphContainer.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {

  @override
  Widget build(BuildContext context) {
    final DashboardController controller = DashboardController();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 45.0),
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            bottomNavigationBar: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.yellow),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: (index) {
                  controller.index.value = index;
                  print(index);
                },
                indicatorWeight: 0,
                labelColor: MyColor.blue,
                unselectedLabelColor: MyColor.blue,
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                isScrollable: true,
                indicatorColor: MyColor.light_blue,
                enableFeedback: false,
                tabs: [
                  Tab(
                    text: "Share",
                  ),
                  Tab(
                    text: "Indices",
                  ),
                  Tab(
                    text: "Forex",
                  ),
                  Tab(
                    text: "Commodities",
                  ),
                  Tab(
                    text: "Crypto",
                  ),

                  // Add Tabs here
                ],
              ),
            ),
            body:
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70)),
                        color: MyColor.light_blue,
                      ),
                      height: 240,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/new_main_logo.png', height: MediaQuery.of(context).size.height*0.05),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "DASHBOARD",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Welcome! User",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Image.asset(
                                      'assets/wallet-73.png',
                                      height: 42,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Deposit",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 38.0, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Invested Value: 0",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.amberAccent),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100)))),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Current Value: 0",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.amberAccent),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100)))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200.0),
                      child: Align(
                        alignment: Alignment.center,
                        child:  TabBarView(
                          children:[
                            DashBoardSheareView(),
                            DashBoardSheareView(),
                            DashBoardSheareView(),
                            DashBoardSheareView(),
                            DashBoardSheareView(),
    ]
                          ),
                        ),
                      ),
                  ],
                ),
                // TabBarView(
                //   children: [
                //     ShareView(),
                //     ShareView(),
                //     ShareView(),
                //     ShareView(),
                //     ShareView(),
                //   ],
                // ),

          ),
        ),
      ),
    );
  }
}
