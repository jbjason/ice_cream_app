import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

Container getAppBarIcon(String img) => Container(
      height: 53,
      width: 53,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: bodyColor,
        boxShadow: boxShadow,
      ),
      child: Image.asset(img, fit: BoxFit.cover),
    );
