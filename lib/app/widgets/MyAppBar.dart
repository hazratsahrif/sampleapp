import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
  String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,

      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
          height: 120,

          width: MediaQuery.of(context).size.width,
          child: Align(
              alignment: Alignment.bottomCenter,

              child: Row(
                children: [

                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text(title,style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
                  ),
                  Spacer(),
                ],
              )),


          decoration: BoxDecoration(
              color: MyColor.light_blue,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(22), bottomLeft: Radius.circular(22))

          )


      ),
    );
  }
}