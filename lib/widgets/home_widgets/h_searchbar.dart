import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HSearchBar extends StatelessWidget {
  const HSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Container(
      height: 53,
      decoration: BoxDecoration(
        gradient: bodyGradient,
        borderRadius: BorderRadius.circular(14),
        boxShadow: boxShadow,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              autofocus: false,
              textInputAction: TextInputAction.search,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: InputBorder.none,
                hintText: 'Search Your Flavors',
                hintStyle: TextStyle(
                  color: Color(0xFFE0E0E0),
                  fontSize: 14,
                  letterSpacing: 1.3,
                  wordSpacing: 1.5,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4.5),
            width: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: selectedColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(11),
                bottomRight: Radius.circular(11),
              ),
            ),
            child: const Icon(CupertinoIcons.search, color: selectedIcon),
          ),
        ],
      ),
    );
  }
}
