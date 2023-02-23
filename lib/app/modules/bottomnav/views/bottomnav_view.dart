import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/modules/dashboard/views/dashboard_view.dart';
import 'package:sampleapp/app/modules/market/views/market_view.dart';
import 'package:sampleapp/app/modules/portfolio/views/portfolio_view.dart';
import 'package:sampleapp/app/modules/profile/views/profile_view.dart';

import '../controllers/bottomnav_controller.dart';

class BottomNavigationView extends GetView<BottomnavController> {
  BottomNavigationView({Key? key}) : super(key: key);
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    DashboardView(),
    MarketView(),
    PortfolioView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
            body: Obx(() {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 29.0),
                    child: _widgetOptions.elementAt(controller.selectedIndex.value),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          SizedBox(
                            height: 89,
                            width: double.infinity,
                            child: CustomPaint(
                              painter:RPSCustomPainter() ,
                            ),

                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 90,
                            child: SvgPicture.asset("assets/Rectangle 1064.svg",color: MyColor.light_blue,),
                          ),

                          Obx(() {
                            return BottomNavigationBar(
                              type: BottomNavigationBarType.fixed,
                              showUnselectedLabels: true,
                              showSelectedLabels: true,
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              selectedLabelStyle: TextStyle(
                                  color: MyColor.blue
                              ),
                              items:  <BottomNavigationBarItem>[
                                BottomNavigationBarItem(
                                  icon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/dash.svg', color:
                                    controller.selectedIndex==0?Colors.white:Colors.black,),
                                  ),
                                  label: 'Dashboard',
                                ),
                                BottomNavigationBarItem(
                                  icon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/dollar-square.svg', color:
                                    controller.selectedIndex==1?Colors.white:Colors.black,),
                                  ),
                                  label: 'Market',
                                ),
                                BottomNavigationBarItem(
                                  icon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/archive-book.svg', color:
                                    controller.selectedIndex==2?Colors.white:Colors.black,),
                                  ),
                                  label: 'Portfolio',
                                ),
                                BottomNavigationBarItem(
                                  icon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/user-square.svg', color:
                                    controller.selectedIndex==3?Colors.white:Colors.black,),
                                  ),
                                  label: 'Profile',
                                ),

                              ],
                              currentIndex: controller.selectedIndex.value,
                              selectedItemColor: Colors.white,
                              selectedFontSize: 12,
                              unselectedItemColor: Colors.black,
                              onTap: controller.onItemTapped,
                            );
                          }
                          ),
                        ]
                    ),
                  ),


                ],
              );
            }),

        // bottomNavigationBar:  Stack(
        //       alignment: AlignmentDirectional.bottomCenter,
        //       children: [
        //         SizedBox(
        //           height: 89,
        //           width: double.infinity,
        //           child: CustomPaint(
        //             painter:RPSCustomPainter() ,
        //           ),
        //
        //         ),
        //         SizedBox(
        //         width: double.infinity,
        //       height: 90,
        //       child: SvgPicture.asset("assets/Rectangle 1064.svg",color: MyColor.light_blue,),
        //         ),
        //
        //       Obx(() {
        //         return BottomNavigationBar(
        //           type: BottomNavigationBarType.fixed,
        //           showUnselectedLabels: true,
        //           showSelectedLabels: true,
        //           elevation: 0,
        //           backgroundColor: Colors.transparent,
        //           selectedLabelStyle: TextStyle(
        //             color: MyColor.blue
        //           ),
        //           items:  <BottomNavigationBarItem>[
        //             BottomNavigationBarItem(
        //               icon: Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: SvgPicture.asset('assets/dash.svg', color:
        //                 controller.selectedIndex==0?Colors.white:Colors.black,),
        //               ),
        //               label: 'Dashboard',
        //             ),
        //             BottomNavigationBarItem(
        //               icon: Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: SvgPicture.asset('assets/dollar-square.svg', color:
        //                 controller.selectedIndex==1?Colors.white:Colors.black,),
        //               ),
        //               label: 'Market',
        //             ),
        //             BottomNavigationBarItem(
        //               icon: Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: SvgPicture.asset('assets/archive-book.svg', color:
        //                   controller.selectedIndex==2?Colors.white:Colors.black,),
        //               ),
        //               label: 'Portfolio',
        //             ),
        //             BottomNavigationBarItem(
        //               icon: Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: SvgPicture.asset('assets/user-square.svg', color:
        //                 controller.selectedIndex==3?Colors.white:Colors.black,),
        //               ),
        //               label: 'Profile',
        //             ),
        //
        //           ],
        //           currentIndex: controller.selectedIndex.value,
        //           selectedItemColor: Colors.white,
        //           selectedFontSize: 12,
        //           unselectedItemColor: Colors.black,
        //           onTap: controller.onItemTapped,
        //         );
        //       }
        //       ),
        // ]
        //     ),

            ),
          );
        }

}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,size.height);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width,size.height*0.3053440);
    path_0.lineTo(size.width,0);
    path_0.cubicTo(size.width,0,size.width*0.9854899,size.height*0.1409083,size.width*0.9646465,size.height*0.2061071);
    path_0.cubicTo(size.width*0.9368687,size.height*0.2930012,size.width*0.9141414,size.height*0.3053440,size.width*0.9141414,size.height*0.3053440);
    path_0.lineTo(size.width*0.06565657,size.height*0.3053440);
    path_0.cubicTo(size.width*0.02939545,size.height*0.3053440,0,size.height*0.4439214,0,size.height*0.6148667);
    path_0.lineTo(0,size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff04569F);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}