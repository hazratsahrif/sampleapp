import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'app/routes/app_pages.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: MyColor.light_blue,
    systemNavigationBarColor: MyColor.light_blue
  ));
  GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
     navigatorKey: mainNavigatorKey,
     themeMode: ThemeMode.dark,
      builder:EasyLoading.init(),

      theme: ThemeData(

        appBarTheme: AppBarTheme(
          backgroundColor: MyColor.light_blue,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: MyColor.light_blue,


          ),


        )),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
