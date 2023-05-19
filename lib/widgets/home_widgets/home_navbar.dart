import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key, required this.selectedNav});
  final ValueNotifier<int> selectedNav;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navItems.length,
          (i) => ValueListenableBuilder(
            valueListenable: selectedNav,
            builder: (context, val, _) => InkWell(
              onTap: () => selectedNav.value = i,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: i == val ? selectedColor : Colors.transparent,
                ),
                child: Icon(navItems[i],
                    color: i == val ? selectedIcon : iconColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
