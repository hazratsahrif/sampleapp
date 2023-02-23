import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sampleapp/app/constant/colors.dart';
import 'package:sampleapp/app/widgets/MyAppBar.dart';
import 'package:sampleapp/app/widgets/PrimaryButton.dart';
import 'package:sampleapp/app/widgets/TextFieldWithTitle.dart';

import '../controllers/profileform_controller.dart';

class ProfileformView extends GetView<ProfileformController> {
  const ProfileformView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:'Profile Form' ,),
      body: Column(
        children: [
          SizedBox(height: 22,),
          TextFieldWithTitle(
            title: "Name",
            hint: "Enter your name",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "Email address",
            hint: "Enter your email address",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "Mobile number",
            hint: "Enter your mobile no",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "Whatsapp number",
            hint: "Enter your whatsapp no",
            isSuffix: false,
            onTap: null,
          ),
          TextFieldWithTitle(
            title: "Upload",
            hint: "Upload your photo",
            isSuffix: true,
            onTap: null,
          ),
          PrimaryButton(title: "Save",onTap: (){},),
        ],
      ),

    );
  }
}


