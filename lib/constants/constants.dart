import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ice_cream_app/models/ice_cream.dart';

const wBackColor = Color(0xFFF8CCCB);
const wBackSecondary = Color(0xFFB8B37B);
const wBackThird = Color(0xFF93A648);

const backColor = Color(0xFFEEEEEE);
const bodyColor = Color(0xFFFFFFFF);
const textColor = Color(0xDD000000);
const textSecondary = Color(0x61000000);
const iconColor = Color(0xFF616161);
const selectedColor = Color(0xFF64B5F6);
const selectedIcon = Color(0xFFFFFFFF);

const c = Colors.indigo;

const String welcomeText = """Get ready for an epic brain freeze\n
  Text('because these are the most amazing,\n
  Text('Icre-creams in the world.""";

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
    offset: Offset(3, 3),
  ),
  BoxShadow(
    color: Color(0xFFFFFFFF),
    spreadRadius: 2,
    blurRadius: 30,
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
    img: 'assets/images/ice8.png',
    offer: -10,
    price: 2.36,
    duration: 15,
    rating: 4.3,
    color: Colors.cyan[200]!,
  ),
  IceCream(
    title: 'Queso ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice6.png',
    offer: -13,
    price: 4.36,
    duration: 10,
    rating: 4.1,
    color: Colors.brown[200]!,
  ),
  IceCream(
    title: 'Spumoni ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice5.png',
    offer: -24,
    price: 1.96,
    duration: 07,
    rating: 4.4,
    color: Colors.lime[200]!,
  ),
  IceCream(
    title: 'Queso ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice7.png',
    offer: -13,
    price: 4.36,
    duration: 10,
    rating: 4.1,
    color: Colors.deepOrange[200]!,
  ),
  IceCream(
    title: 'Cherry ice Cream',
    details: 'Fillipino ice cream flavor prepared using cheddar cheese',
    img: 'assets/images/ice7.png',
    offer: -10,
    price: 2.36,
    duration: 15,
    rating: 4.3,
    color: Colors.pink[200]!,
  ),
];
