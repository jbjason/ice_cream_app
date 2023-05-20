import 'package:flutter/material.dart';

class WBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    const gradient = SweepGradient(
      tileMode: TileMode.repeated,
      colors: [
        Colors.white38,
        Colors.white10,
        Colors.white12,
        Color(0x62FFFFFF),
        Color(0xB3FFFFFF),
        Colors.white38,
        Colors.white54,
      ],
    );
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);
    final paint = Paint()..shader = gradient.createShader(rect);
    final path = Path();

    path.moveTo(w * .7, 0);
    path.cubicTo(w * .45, h * .22, w * .9, h * .05, w * .85, h * .13);
    path.cubicTo(w * .84, h * .14, w * .92, h * .24, w, h * .13);
    //path.lineTo(w, h * .4);
    path.lineTo(w, 0);
    path.close();
    canvas.drawPath(path, paint);

    final path2 = Path();
    path2.moveTo(0, h * .25);
    path2.cubicTo(w * .4, h * .2, w * .7, h * .6, w * .65, h * .65);
    path2.cubicTo(w * .64, h * .7, w * .5, h * .78, 0, h * .72);
    path2.close();
    canvas.drawPath(path2, paint);

    const gradient2 = RadialGradient(
      tileMode: TileMode.repeated,
      colors: [
        Colors.white54,
        Colors.white,
        Colors.white54,
      ],
    );
    final paint2 = Paint()..shader = gradient2.createShader(rect);
    final path3 = Path();
    path3.moveTo(w * .37, h);
    path3.cubicTo(w * .33, h * .95, w * .4, h * .91, w * .5, h * .91);
    path3.cubicTo(w * .65, h * .92, w * .55, h * .98, w * .71, h);

    path3.close();
    canvas.drawPath(path3, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
