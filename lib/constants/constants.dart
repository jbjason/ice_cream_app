import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ice_cream_app/models/ice_cream.dart';

const backColor = Color(0xFFEEEEEE);
const bodyColor = Color(0xFFFFFFFF);
const textColor = Color(0xDD000000);
const textSecondary = Color(0x61000000);
const iconColor = Color(0xFF616161);
const selectedColor = Colors.lightBlueAccent;
const selectedIcon = Color(0xFFFFFFFF);

const c = Colors.grey;

const bodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.white, Colors.white, Color(0xB3FFFFFF), Color(0x62FFFFFF)],
);

const boxShadow = [
  BoxShadow(
    color: Color(0xFFD6D6D6),
    spreadRadius: 2,
    blurRadius: 10,
    offset: Offset(2, 2),
  ),
  BoxShadow(
    color: Color(0xFFFFFFFF),
    spreadRadius: 2,
    blurRadius: 20,
    offset: Offset(-2, -2),
  ),
];

const categories = [
  'All',
  'Vanilla',
  'Chocolate',
  'strawberry',
  'Gelato',
  'Frozen Yogurt'
];

const navItems = [
  CupertinoIcons.home,
  Icons.monitor_heart_outlined,
  CupertinoIcons.square_grid_2x2,
  CupertinoIcons.heart,
  CupertinoIcons.person,
];

final iceCreams = [
  IceCream(
    title: 'Cherry ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice1.png',
    offer: -10,
    price: 2.36,
    duration: 15,
    rating: 4.3,
    color: Colors.cyan,
  ),
  IceCream(
    title: 'Queso ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice2.png',
    offer: -13,
    price: 4.36,
    duration: 10,
    rating: 4.1,
    color: Colors.brown,
  ),
  IceCream(
    title: 'Spumoni ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice3.png',
    offer: -24,
    price: 1.96,
    duration: 07,
    rating: 4.4,
    color: Colors.lime,
  ),
];
