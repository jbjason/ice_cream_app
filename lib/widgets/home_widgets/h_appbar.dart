import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants_get.dart';

class HAppBar extends StatelessWidget {
  const HAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getAppBarIcon('assets/icons/menu.png'),
        const Spacer(),
        getAppBarIcon('assets/icons/figma.png'),
        const SizedBox(width: 20),
        getAppBarIcon('assets/icons/cart1.png'),
      ],
    );
  }
}
