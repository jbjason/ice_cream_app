import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/widgets/painters/w_body_painter.dart';
import 'package:ice_cream_app/widgets/welcome_widgets/w_body.dart';

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
              child: const WBody(),
            ),
          ),
          // body
        ],
      ),
    );
  }
}
