import 'package:flutter/cupertino.dart';

class IceCream {
  final String title;
  final String details;
  final String img;
  final int offer;
  final double price;
  final double duration;
  final double rating;
  final Color color;

  IceCream(
      {required this.title,
      required this.details,
      required this.img,
      required this.offer,
      required this.price,
      required this.duration,
      required this.rating,
      required this.color});
}
