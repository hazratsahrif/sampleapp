import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/app/constant/colors.dart';
class MyTextField extends StatefulWidget {
  String hint;
  TextEditingController controller;
  ValueChanged<String> valueChanged;
  MyTextField({required this.hint,required this.controller,required this.valueChanged});


  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.controller=widget.controller;
  }
 // @override
 //  void dispose() {
 //    // TODO: implement dispose
 //    super.dispose();
 //    widget.controller.dispose();
 //  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: TextField(
        onChanged:  widget.valueChanged,
        controller: widget.controller,
        keyboardType: TextInputType.text,
        style:  TextStyle(
            color: MyColor.gray_border_col,
            fontSize: 16,
            fontWeight: FontWeight.bold

        ),
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hint,
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
            borderSide: BorderSide(color: MyColor.light_gray, width: 2.0),
          ),

        ),
      ),
    );
  }
}
// class MyTextField extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
//       child: TextField(
//         onChanged: valueChanged,
//         controller: controller,
//
//         style:  TextStyle(
//             color: MyColor.gray_border_col,
//             fontSize: 16,
//             fontWeight: FontWeight.bold
//
//         ),
//         decoration: InputDecoration(
//           isDense: true,
//           hintText: hint,
//           hintStyle: TextStyle(
//               color: MyColor.gray_border_col,
//               fontSize: 16,
//               fontWeight: FontWeight.bold
//
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: BorderSide(color: MyColor.blue, width: 2.0),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: BorderSide(color: MyColor.light_gray, width: 2.0),
//           ),
//
//         ),
//       ),
//     );
//   }
// }