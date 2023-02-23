import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sampleapp/app/constant/colors.dart';

class PrimaryButton extends StatelessWidget {
  String title;
  Callback onTap;


  PrimaryButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: MaterialButton(onPressed:onTap,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
          elevation: 5.0,
          padding: EdgeInsets.symmetric(horizontal: 70),

          child: Text(title,
            style: TextStyle(
                color:Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          color: MyColor.light_blue,

        ),
      ),
    );
  }
}