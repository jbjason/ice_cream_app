import 'package:flutter/material.dart';
import 'package:ice_cream_app/models/ice_cream.dart';
import 'package:ice_cream_app/widgets/painters/h_related_painter.dart';

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
                  borderRadius: BorderRadius.circular(18),
                  color: iceCream.color,
                ),
                child: Image.asset(
                  iceCream.img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 10),
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
          ],
        ),
      ),
    );
  }
}
