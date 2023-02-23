import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/bottomnav/controllers/bottomnav_controller.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/widgets/GraphContainer.dart';
import 'package:sampleapp/app/widgets/PortfolioConatiner.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<BottomnavController> {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2.5,
                decoration: BoxDecoration(
                  color: MyColor.light_blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: MyColor.light_blue,
                  ),

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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Obx(() {
                                  return Container(
                                    child: controller.isLoadingPortfolio.value
                                        ? CircularProgressIndicator(
                                      color: Colors.white,)
                                        : controller.portfolioData.value
                                        .userName!.isNotEmpty ?
                                    CircleAvatar(backgroundImage: NetworkImage(
                                        controller.portfolioData.value
                                            .userProfileImg!),)
                                        : Icon(
                                      Icons.person_pin,
                                      size: 70,
                                      color: Colors.white,
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "PORTFOLIO",
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
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.DEPOSIT);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/2976388.png',
                                            height: 36,
                                            color: Colors.white,
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
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.WITHDRAWREQUEST);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/1682308.png',
                                            height: 36,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            "Withdrawal",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: ElevatedButton(

                                  onPressed: () {},
                                  child: Obx(() {
                                    return Text(
                                      "Invested Value: ${controller
                                          .portfolioData
                                          .value.investedValue ?? "0"}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    );
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all(
                                          Colors.amberAccent),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(100)))),
                                ),
                              ),
                              Flexible(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Obx(() {
                                    return Text(
                                      "Current Value: ${ controller
                                          .portfolioData
                                          .value.currentValue ?? "0"}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w600),
                                    );
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all(
                                          Colors.amberAccent),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(100)))),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  return Container(
                    child: controller.isLoadingTrading.value
                        ? CircularProgressIndicator(
                      color: MyColor.dark_blue,)
                        : controller.tradingDataList.length == 0 ? Center(
                        child: Text("No Data found")) : Expanded(
                      child: ListView.builder(
                          itemCount: controller.tradingDataList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return PorfolioContainer(
                              data: controller.tradingDataList[index],);
                          }),
                    ),
                  );
                }),
                SizedBox(height: 38,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


