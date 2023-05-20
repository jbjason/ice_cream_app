import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HIcePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = bodyColor;
    final path = Path();

    path.moveTo(0, h);
    path.lineTo(w * .1, h);
    final curveH = h * .88;
    path.cubicTo(w * .3, h, w * .4, curveH, w * .5, curveH);
    path.cubicTo(w * .6, curveH, w * .7, h, w * .9, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(w * .35, 0);
    path.cubicTo(w * .4, h * .05, w * .3, h * .08, w * .22, h * .08);
    path.cubicTo(w * .05, h * .1, w * .09, h * .27, 0, h * .22);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
