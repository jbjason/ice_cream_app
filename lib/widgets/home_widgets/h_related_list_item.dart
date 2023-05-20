import 'package:flutter/material.dart';
import 'package:ice_cream_app/models/ice_cream.dart';
import 'package:ice_cream_app/widgets/painters/h_related_painter.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;

class HRelatedListItem extends StatelessWidget {
  const HRelatedListItem(
      {super.key, required this.size, required this.iceCream});
  final Size size;
  final IceCream iceCream;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HomeRelatedPainter(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                constraints: const BoxConstraints.expand(),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: iceCream.color,
                ),
                child: Image.asset(
                  iceCream.img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      iceCream.title,
                      style: const TextStyle(fontSize: 13, letterSpacing: .1),
                    ),
                    Text(
                      '\$ ${iceCream.price}',
                      style: const TextStyle(
                        fontSize: 13,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -3,
                  right: -7,
                  child: Transform.rotate(
                    alignment: Alignment.center,
                    angle: math.radians(-27),
                    child: Text(
                      '${iceCream.offer}%',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
