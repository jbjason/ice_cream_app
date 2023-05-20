import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HomeRelatedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = bodyColor;
    final path = Path();

    path.lineTo(0, h);
    path.lineTo(w * .85, h);
    path.cubicTo(w * .8, h * .83, w * .88, h * .83, w * .92, h * .8);
    path.cubicTo(w * .965, h * .8, w * .96, h * .5, w, h * .6);
    path.lineTo(w, 0);
    path.close();

    canvas.drawShadow(path, const Color(0xFFD6D6D6), 10, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
