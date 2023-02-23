import 'package:flutter/material.dart';

class ProfileRPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(0,size.height);
    path_0.cubicTo(0,size.height,size.width*0.01504662,size.height*0.7992017,size.width*0.06801008,size.height*0.7992017);
    path_0.lineTo(size.width*0.6977330,size.height*0.7992017);
    path_0.lineTo(size.width*0.8690176,size.height*0.7992017);
    path_0.cubicTo(size.width*0.9413577,size.height*0.7992017,size.width,size.height*0.6019042,size.width,size.height*0.3585237);
    path_0.lineTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff04569F).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}