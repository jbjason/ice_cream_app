import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class WelcomScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, .6, .9],
                  colors: [wBackColor, wBackSecondary, wBackThird],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: CustomPaint(
              painter: WBodyPainter(),
            ),
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12, top: 50),
                child: Text(
                  'BRAIN FREEZE',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    letterSpacing: .05,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned.fill(
                top: -50,
                child: Image.asset(
                  'assets/images/cover1.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Enjoy it before it melts',
                    style: TextStyle(fontSize: 23, letterSpacing: 1.2),
                  ),
                  SizedBox(height: 10),
                  Text(
                    welcomeText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Get Start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
    path3.moveTo(w * .4, h);
    path3.cubicTo(w * .35, h * .95, w * .4, h * .91, w * .5, h * .91);
    path3.cubicTo(w * .65, h * .92, w * .55, h * .98, w * .71, h);

    path3.close();
    canvas.drawPath(path3, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
