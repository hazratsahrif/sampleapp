import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';

import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  const ContactusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Conatct Us",),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/mesg.png',height: MediaQuery.of(context).size.height/4,),
            SizedBox(height: 12,),


            Container(

              margin: EdgeInsets.symmetric(horizontal: 100),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0.6
                  )
                ],
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  stops: [
                    0.009,
                    0.9
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black45,
                    Color(0xff5154E2),

                  ]
                ),

              ),
              child: Center(
                child: Text("Contact us",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.yellow,
                ),
            ),
              ),

            ),
            SizedBox(height: 20,),





            Row(
              children: [
                Container(

                  width: MediaQuery.of(context).size.width/2,
                 child: Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text("Email id", style: TextStyle(

                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.bold
                     ),),
                   ),
                 ),

                ),
                Container(

                  width: MediaQuery.of(context).size.width/2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(": admin@gmail.com", style: TextStyle(

                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ],

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.white
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(

                  width: MediaQuery.of(context).size.width/2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Whatsapp no", style: TextStyle(

                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                ),
                Container(

                  width: MediaQuery.of(context).size.width/2,height: 32,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(": xxx xxx xxx", style: TextStyle(

                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ],

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.white
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(

                  width: MediaQuery.of(context).size.width/2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Telegram", style: TextStyle(

                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                ),
                Container(

                  width: MediaQuery.of(context).size.width/2,height: 32,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(": admin", style: TextStyle(

                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ],

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.white
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(

                  width: MediaQuery.of(context).size.width/2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Facebook", style: TextStyle(

                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                ),
                Container(

                  width: MediaQuery.of(context).size.width/2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(": admin@fb.com", style: TextStyle(

                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ],

            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: MyColor.blue,width: 2)
                    ),
                    child: Center(child: Icon(Icons.whatsapp, color: MyColor.blue,)),

                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColor.blue,width: 2)
                    ),
                    child: Center(child: Icon(Icons.facebook, color: MyColor.blue,)),

                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColor.blue,width: 2)
                    ),
                    child: Center(child: Icon(Icons.email_rounded, color: MyColor.blue,)),

                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColor.blue,width: 2)
                    ),
                    child:  Center(
                      child: Transform.rotate(
                          angle: -45,
                          child: Icon(Icons.send, color: MyColor.blue,)),
                    ),

                  ),





                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
