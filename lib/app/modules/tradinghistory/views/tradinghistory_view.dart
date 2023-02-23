import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/bottomnav/views/bottomnav_view.dart';
import 'package:sampleapp/app/widgets/GraphContainer.dart';
import 'package:sampleapp/app/widgets/MyTextField.dart';
import 'package:sampleapp/app/widgets/PortfolioConatiner.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';

import '../controllers/tradinghistory_controller.dart';

class TradinghistoryView extends GetView<TradinghistoryController> {
  const TradinghistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: ProfileRPSCustomPainter(),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,

                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Center(
                    child: Row(

                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 32.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Trading History",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,

                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 58.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 82,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,bottom: 9),
                    child: Text(
                      "LATEST TRADING",
                      style: TextStyle(
                          color: MyColor.light_blue,
                          fontSize: 20,
                          letterSpacing: 0,

                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
          child: ListView.builder(  itemCount: controller.tradingController.tradingDataList.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PorfolioContainer(data: controller.tradingController.tradingDataList[index],),
                      );

                    }),

                  ),

                ],
              ),
            ),



          ],
        ),
        // bottomNavigationBar: SizedBox(
        //   height: 89,
        //   width: double.infinity,
        //   child: CustomPaint(
        //     painter:RPSCustomPainter() ,
        //   ),
        //
        // ),
      ),
    );
  }
}
