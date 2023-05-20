import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HCategoryList extends StatelessWidget {
  const HCategoryList({super.key, required this.selectedCat});
  final ValueNotifier<int> selectedCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: List.generate(
          categories.length,
          (i) => ValueListenableBuilder(
            valueListenable: selectedCat,
            builder: (context, val, _) => InkWell(
              onTap: () => selectedCat.value = i,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: boxShadow,
                  color: val == i ? selectedColor : Colors.white,
                ),
                child: Text(
                  categories[i],
                  style: TextStyle(
                    color: val == i ? selectedIcon : textColor,
                    letterSpacing: val == i ? 1.2 : 1,
                    fontWeight: val == i ? FontWeight.w700 : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
