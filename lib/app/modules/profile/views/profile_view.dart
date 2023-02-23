import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/custompaint.dart';
import 'package:sampleapp/storage/Storage.dart';
import 'package:sampleapp/utils/easy_loading.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
   ProfileView({Key? key}) : super(key: key);
  final storage =  FlutterSecureStorage();
  SecureStorage secureStorage = new SecureStorage();
    String userID="";
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "NAME",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.person_pin,
                        size: 70,
                        color: Colors.white,
                      ),



                    ],
                  ),
                ),
              ),
            ),

            Column(
              children: [
                SizedBox(height: 83,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 38.0),
                      child: Column(

                        children: [

                          ProfileContainer(title: "Statement",
                            subTitle: [
                              "Deposit",
                              "Withdraw",

                            ],
                            onTaped: [
                                  (){
                                Get.toNamed(Routes.DEPOSITSTATEMENT);
                              },
                                  (){
                                Get.toNamed(Routes.WITHDRAW);
                              },
                            ],


                          ),
                          ProfileContainer(title: "TRADING HISTORY",
                            subTitle: [
                              "Latest trading",

                            ],
                            onTaped: [
                                  (){
                                Get.toNamed(Routes.TRADINGHISTORY);
                              },

                            ],


                          ),
                          ProfileContainer(title: "General",
                            subTitle: [
                              "Basic Information",
                              "Document Form",
                              "Bank Account",
                              "Change Password",

                            ],
                            onTaped: [
                                  (){
                                Get.toNamed(Routes.PROFILEFORM);
                              },
                                  (){
                                Get.toNamed(Routes.DOCUMENTFORM);
                              },
                                  (){
                                Get.toNamed(Routes.BANKACCOUNT);
                              },
                                  (){
                                print("Last");
                              },
                            ],


                          ),
                          ProfileContainer(title: "Settings",
                            subTitle: [
                              "Language",
                              "Notification",
                              "Two factor authentication",


                            ],
                            onTaped: [
                                  (){
                                print("Basic");
                              },
                                  (){},

                                  (){
                                print("Last");
                              },
                            ],


                          ),
                          ProfileContainer(title: "Help and feedback",
                            subTitle: [
                              "Help and support",
                              "About",


                            ],
                            onTaped: [
                                  (){
                                    Get.toNamed(Routes.CONTACTUS);
                              },
                                  (){

                              },
                            ],


                          ),

                          SizedBox(height: 12,),
                          PrimaryButton(title: "LOGOUT", onTap: () async {
                            Loading().showEasyLoading("loading");
                            await secureStorage.deleteSecureData("userID").then((value) => userID=value);
                            if(userID==null){
                              Loading().easyLoadingSuccess();
                            Get.toNamed(Routes.HOME);
                            }
                            else{
                              Loading().easyLoadingSuccess();
                              /// nothing
                            }


                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),





          ],
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  String? title;
  List<String>? subTitle;
  List<Callback>? onTaped;


  ProfileContainer({this.title, this.subTitle, this.onTaped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12,),
          Text(
            title!.toUpperCase(),
            style: TextStyle(
                color: MyColor.light_blue,
                fontSize: 18,
                letterSpacing: 0,

                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12,),
          Container(
            decoration: BoxDecoration(
              color: MyColor.sky_color,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: List.generate(subTitle!.length, (index) =>     Column(
                  children: [
                    ListTile(
                      onTap: onTaped![index],
                      title: Text(
                        subTitle![index],
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      minVerticalPadding: 0,
                      dense: true,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: index!=subTitle!.length-1?Divider(color: Colors.black45,thickness: 2,):null,
                    ),
                  ],
                )),
              ),
            )



          )
        ],
      ),
    );
  }
}

