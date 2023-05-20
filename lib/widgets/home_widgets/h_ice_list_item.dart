import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/models/ice_cream.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;

class HIceListItem extends StatelessWidget {
  const HIceListItem({super.key, required this.size, required this.iceCream});
  final Size size;
  final IceCream iceCream;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: size.height * .16, child: getTopBody()),
        Expanded(child: getBottomBody()),
      ],
    );
  }

  Stack getTopBody() => Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(iceCream.img, fit: BoxFit.contain),
          Positioned(
            top: 7,
            right: 7,
            child: Icon(Icons.favorite, color: iceCream.color, size: 15),
          ),
          Positioned(
            top: 7,
            left: 3,
            child: Transform.rotate(
              alignment: Alignment.center,
              angle: math.radians(-27),
              child: Text(
                '${iceCream.offer}%',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      );
  Padding getBottomBody() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // title
            Text(
              iceCream.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: textColor,
                letterSpacing: 1.2,
              ),
            ),
            // details
            Text(
              iceCream.details,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: textSecondary, fontSize: 8),
            ),
            const SizedBox(height: 5),
            // price, minutes, rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${iceCream.price}',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${iceCream.duration} mins',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '☆ \$ ${iceCream.rating}',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: selectedIcon,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      );
}
