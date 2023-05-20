import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/constants/constants_get.dart';
import 'package:ice_cream_app/screens/home_screen.dart';

class WBody extends StatelessWidget {
  const WBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // top Text
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
        // cover image
        Positioned.fill(
          top: -50,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
            child: Image.asset(
              'assets/images/cover1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        // Bottom Texts
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Enjoy it before it melts',
              style: TextStyle(fontSize: 23, letterSpacing: 1.2),
            ),
            const SizedBox(height: 10),
            getWelcomeText(welcomeText1),
            getWelcomeText(welcomeText2),
            getWelcomeText(welcomeText3),
            const SizedBox(height: 60),
            const Text(
              'Get Start',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.2),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ],
    );
  }
}
