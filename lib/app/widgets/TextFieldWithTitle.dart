import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sampleapp/app/constant/colors.dart';

class TextFieldWithTitle extends StatelessWidget {
  String title, hint;
  bool isSuffix;
  Callback? onTap;

  TextFieldWithTitle({required this.title,required this.hint, required this.isSuffix, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: TextStyle(
                color: MyColor.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12,),
          TextField(
            cursorColor: MyColor.blue,


            style:  TextStyle(
                color: MyColor.gray_border_col,
                fontSize: 16,
                fontWeight: FontWeight.bold

            ),
            decoration: InputDecoration(
              isDense: true,
              suffixIcon: isSuffix?IconButton(
                icon:  Icon(Icons.add_a_photo_rounded,color: MyColor.blue,),
                tooltip: 'Increase volume by 10',
                color: MyColor.blue,
                iconSize: 29,
                onPressed: onTap,
              ):null,


              hintText: hint,
              hintStyle: TextStyle(
                  color: MyColor.gray_border_col,
                  fontSize: 16,
                  fontWeight: FontWeight.bold

              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: MyColor.blue, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: MyColor.light_blue, width: 2.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}