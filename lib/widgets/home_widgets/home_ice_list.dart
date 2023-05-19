import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';

class HomeIceList extends StatelessWidget {
  const HomeIceList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          iceCreams.length,
          (i) => Container(
            height: size.height * .28,
            width: size.width * .42,
            margin: const EdgeInsets.only(right: 20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: iceCreams[i].color,
            ),
            child: CustomPaint(
              painter: IceItemPainter(),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .16,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          top: -30,
                          left: -30,
                          right: -30,
                          child: Image.asset(
                            iceCreams[i].img,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  getIceItemBody(i),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding getIceItemBody(int i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              iceCreams[i].title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              iceCreams[i].details,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: textSecondary, fontSize: 10),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${iceCreams[i].price}',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${iceCreams[i].duration} mins',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '☆ \$ ${iceCreams[i].rating}',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: selectedIcon,
                size: 20,
              ),
            ),
          ],
        ),
      );
}

class IceItemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = bodyColor;
    final path = Path();

    path.moveTo(0, h);
    path.lineTo(w * .1, h);
    final curveH = h * .88;
    path.cubicTo(w * .3, h, w * .4, curveH, w * .5, curveH);
    path.cubicTo(w * .6, curveH, w * .7, h, w * .9, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(w * .35, 0);
    path.cubicTo(w * .4, h * .05, w * .3, h * .08, w * .22, h * .08);
    path.cubicTo(w * .05, h * .1, w * .09, h * .27, 0, h * .22);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
