import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/widgets/GraphContainer.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';

import '../controllers/market_controller.dart';


class ShareView extends GetView<MarketController> {
  ShareView({Key? key}) : super(key: key);
  MarketController controller = Get.put(MarketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
            width: MediaQuery.of(context).size.width,
            child: Align(
                alignment: Alignment.bottomCenter,

                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0,left: 12,right: 12),
                  child: Row(
                    children: [

                      Text("-Top looser",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 18),),
                      Spacer(),
                      Text("+Top gainer",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.yellow,fontSize: 18),),

                    ],
                  ),
                )),


            decoration: BoxDecoration(
                color: MyColor.light_blue,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(22), bottomLeft: Radius.circular(22))

            )


        ),
      ),
      body:      Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: MyColor.light_blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Column(
                  children: List.generate(6, (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GraphContainor(),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    ;
  }
}
