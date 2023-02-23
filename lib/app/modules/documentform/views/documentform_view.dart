import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';

import '../controllers/documentform_controller.dart';

class DocumentformView extends GetView<DocumentformController> {
  const DocumentformView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Document Form',)
        ,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text('Address Prof.(Front)',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
              color: MyColor.blue
            ),),
            Spacer(),

            InkWell(child: Image.asset('assets/Photos_polaroid.png',height: 90, color: MyColor.blue,)),
            Spacer(),
            Text('Address Prof.(Bank)',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: MyColor.blue
            ),),
            Spacer(),

            InkWell(child: Image.asset('assets/Photos_polaroid.png',height: 90, color: MyColor.blue,)),
            Spacer(),
            Text('Pan Card',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: MyColor.blue
            ),),
            Spacer(),

            InkWell(child: Image.asset('assets/Photos_polaroid.png',height: 90, color: MyColor.blue,)),
            Spacer(),
            PrimaryButton(title: "Save",onTap: (){},),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
